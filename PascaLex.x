{
module PascaLex (Token(..),TokenName(..),AlexPosn(..),getAPosn,getALine,getACol,scanTokens) where
}

%wrapper "posn"

tokens :-
  <0> $white+ ;
  <0> \, {\p _ -> TK p COM}
  <0> \; {\p _ -> TK p SEP}
  <0> [1-9][0-9]* {\p s -> TK p (INT (read s))}
  <0> 0 {\p _ -> TK p (INT 0)}
  <0> print {\p _ -> TK p PRINT}
  <0> \+ {\p _ -> TK p PLUS}
  <0> \- {\p _ -> TK p SUB}
  <0> \* {\p _ -> TK p MULT}
  <0> \/ {\p _ -> TK p DIV}
  <0> \= {\p _ -> TK p EQU}
  <0> \( {\p _ -> TK p LPAR}
  <0> \) {\p _ -> TK p RPAR}
  <0> \< {\p _ -> TK p SM}
  <0> \> {\p _ -> TK p GR}
  <0> \&\& {\p _ -> TK p AND}
  <0> \|\| {\p _ -> TK p OR}
  <0> \! {\p _ -> TK p NOT}
  <0> \/\/.*\n ;
  <0> \/\*(.|\n)*\*\/ ;
  <0> let {\p _ -> TK p LET}
  <0> input {\p _ -> TK p INP}
  <0> if {\p _ -> TK p IF}
  <0> else {\p _ -> TK p ELSE}
  <0> endif {\p _ -> TK p EIF}
  <0> while {\p _ -> TK p WH}
  <0> endwhile {\p _ -> TK p EWH}
  <0> true {\p _ -> TK p TRUE}
  <0> false {\p _ -> TK p FALSE}
  <0> mod {\p _ -> TK p MOD}
  <0> [a-zA-Z\_\$][a-zA-Z0-9\_\$]* {\p s -> TK p (VAR s)}

{
data TokenName
  = INT Int -- contient l'entier parsé (conversion String -> Int par (read s))
  | PRINT
  | SEP
  | COM
  | PLUS
  | SUB
  | MULT
  | DIV
  | EQU
  | LPAR
  | RPAR
  | SM
  | GR
  | AND
  | OR
  | NOT
  | LET
  | VAR String
  | INP
  | IF
  | ELSE
  | EIF
  | WH
  | EWH
  | TRUE
  | FALSE
  | MOD
  deriving (Eq,Show)

data Token = TK AlexPosn TokenName deriving (Eq,Show)

scanTokens = alexScanTokens

getAPosn :: Token -> AlexPosn
getAPosn (TK p _) = p

getALine :: AlexPosn -> String
getALine (AlexPn _ l _) = show l

getACol :: AlexPosn -> String
getACol (AlexPn _ _ c) = show c
}
