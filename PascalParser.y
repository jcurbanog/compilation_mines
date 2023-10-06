{
module PascalParser(parseProgram,ParseResult,initEtat)

where

import Control.Monad.State.Lazy
import PascaLex

}

%name parse
%tokentype { Token }
%error { parseError }
%monad {ParseResult}

%token
  print {TK _ PRINT}
  ';' {TK _ SEP}
  ',' {TK _ COM}
  integer {TK _ (INT $$)}
  '+' {TK _ PLUS}
  '-' {TK _ SUB}
  '*' {TK _ MULT}
  '/' {TK _ DIV}
  '=' {TK _ EQU}
  '(' {TK _ LPAR}
  ')' {TK _ RPAR}
  and {TK _ AND}
  or {TK _ OR}
  not {TK _ NOT}
  let {TK _ LET}
  var {TK _ (VAR $$)}
  input {TK _ INP}
  if {TK _ IF}
  else {TK _ ELSE}
  endif {TK _ EIF}
  while {TK _ WH}
  endwhile {TK _ EWH}
  true {TK _ TRUE}
  false {TK _ FALSE}

%left '+'
%left '-'
%left '*' '/'
%%
Program : Linst {$1 ++ "\tSTOP\n"}

Linst : Inst {$1}
  | Linst Inst {$1 ++ $2}

Inst : Print ';' {$1}
  | ';' { "" }
  | Init ';' {$1}
  | LInit ';' {$1}
  | Def ';' {$1}
  | InitDef ';' {$1}
  | If {$1}
  | While {$1}

Print : print Expr {";/ print...\n" ++ $2 ++ "\tOUT\n"}

Expr : ArExpr {$1}
| BoolExpr {$1}

BoolExpr : true {"\tPUSH\t" ++ "1" ++ "\n"}
| false {"\tPUSH\t" ++ "0" ++ "\n"}
| BoolExpr and BoolExpr {$1 ++ $3 ++ "\tAND\n"}
| BoolExpr or BoolExpr {$1 ++ $3 ++ "\tOR\n"}

ArExpr: integer {"\tPUSH\t" ++ (show $1) ++ "\n"}
| var {"\tPUSH\t" ++ $1 ++ "\n" ++ "\tLOAD\n"}
| '(' ArExpr ')' {$2}
| ArExpr '+' ArExpr {$1 ++ $3 ++ "\tADD\n"}
| ArExpr '-' ArExpr {$1 ++ $3 ++ "\tSUB\n"}
| ArExpr '*' ArExpr {$1 ++ $3 ++ "\tMUL\n"}
| ArExpr '/' ArExpr {$1 ++ $3 ++ "\tDIV\n"}
| input '(' ')' {"\tIN\n"}

LInit : Init ',' var {$1 ++ $3 ++ "\tDS\t" ++ "1\n"}
| LInit ',' var  {$1 ++ $3 ++ "\tDS\t" ++ "1\n"}

Init : let var {$2 ++ "\tDS\t" ++ "1\n"}
Def : var '=' Expr {"\tPUSH\t" ++ $1 ++ "\n" ++ $3 ++ "\tSTORE\n"}
InitDef : let var '=' Expr {$2 ++ "\tDS\t" ++ "1\n" ++ "\tPUSH\t" ++ $2 ++ "\n" ++ $4 ++ "\tSTORE\n"}
If : if Expr Linst endif {% if_then $2 $3}
-- IfElse : if Expr Linst else Linst endif {% }
While : while Expr Linst endwhile {"debut\tEQU\t*\n" ++ $2 ++ "\tBEZ\t finwhile\n" ++ $3 ++ "\tPUSH\t debut\n\tGOTO\n" ++ "finwhile\tEQU\t*\n"}
{

data Etat = Etat {counter :: Integer} deriving (Eq, Show)

{-
 Un type "stupide" -- ParseResult String est un synonyme de String.
    On a envie de remplacer "ParseResult a" par "a" directement,
    mais nous l'étendrons par la suite (questions 12 et suivantes)
-}

type ParseResult a = State Etat a


if_then :: String -> String -> ParseResult String
if_then cond linst = do
  s <- get
  let endif_name = "endif" ++ show (counter s)
  let s' = incrCounter s
  put s'
  return (
    cond ++
    "\tBEZ\t" ++ endif_name ++ "\n" ++
    linst ++
    endif_name ++ "\tEQU\t*\n")

incrCounter :: Etat -> Etat
incrCounter s = Etat {counter = (counter s) + 1}
initEtat :: Etat
initEtat = Etat 42

parseProgram :: String -> ParseResult String
parseProgram = parse . scanTokens

parseError :: [Token] -> ParseResult a
parseError [] = error "Parse error at the end of input"
parseError (h:_) = let p = getAPosn h in error $ "Parse error at line " ++ getALine p ++ ", column " ++ getACol p ++ ", on token " ++ show h
}
