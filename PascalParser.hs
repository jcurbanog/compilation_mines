{-# OPTIONS_GHC -w #-}
module PascalParser(parseProgram,ParseResult,initEtat)

where

import Control.Monad.State.Lazy
import PascaLex
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.1.1

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16
	= HappyTerminal (Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10
	| HappyAbsSyn11 t11
	| HappyAbsSyn12 t12
	| HappyAbsSyn13 t13
	| HappyAbsSyn14 t14
	| HappyAbsSyn15 t15
	| HappyAbsSyn16 t16

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,165) ([0,49155,10,768,2752,0,49155,10,0,0,0,2,0,1536,0,0,6,0,512,0,0,2,0,0,0,0,0,0,2048,24962,0,0,0,0,128,0,256,0,2048,24962,0,33288,97,0,0,0,49155,10,0,24,0,240,0,0,0,0,33288,1,0,0,0,512,0,0,0,0,0,0,768,2752,0,33288,97,0,1,0,0,0,0,0,0,0,0,0,0,0,32768,0,0,0,0,32768,0,0,0,0,0,0,0,0,0,0,0,2048,24962,0,0,0,768,3776,0,1024,0,61440,4,0,33288,1,2048,386,0,33288,1,2048,386,0,0,96,0,24576,0,49155,26,0,0,0,0,0,0,0,0,0,0,0,0,0,192,0,57344,0,0,0,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parse","Program","Linst","Inst","Print","Expr","BoolExpr","ArExpr","LInit","Init","Def","InitDef","If","While","print","';'","','","integer","'+'","'-'","'*'","'/'","'='","'('","')'","and","or","not","let","var","input","if","endif","while","endwhile","true","false","%eof"]
        bit_start = st Prelude.* 40
        bit_end = (st Prelude.+ 1) Prelude.* 40
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..39]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (17) = happyShift action_11
action_0 (18) = happyShift action_12
action_0 (31) = happyShift action_13
action_0 (32) = happyShift action_14
action_0 (34) = happyShift action_15
action_0 (36) = happyShift action_16
action_0 (4) = happyGoto action_17
action_0 (5) = happyGoto action_2
action_0 (6) = happyGoto action_3
action_0 (7) = happyGoto action_4
action_0 (11) = happyGoto action_5
action_0 (12) = happyGoto action_6
action_0 (13) = happyGoto action_7
action_0 (14) = happyGoto action_8
action_0 (15) = happyGoto action_9
action_0 (16) = happyGoto action_10
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (17) = happyShift action_11
action_1 (18) = happyShift action_12
action_1 (31) = happyShift action_13
action_1 (32) = happyShift action_14
action_1 (34) = happyShift action_15
action_1 (36) = happyShift action_16
action_1 (5) = happyGoto action_2
action_1 (6) = happyGoto action_3
action_1 (7) = happyGoto action_4
action_1 (11) = happyGoto action_5
action_1 (12) = happyGoto action_6
action_1 (13) = happyGoto action_7
action_1 (14) = happyGoto action_8
action_1 (15) = happyGoto action_9
action_1 (16) = happyGoto action_10
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (17) = happyShift action_11
action_2 (18) = happyShift action_12
action_2 (31) = happyShift action_13
action_2 (32) = happyShift action_14
action_2 (34) = happyShift action_15
action_2 (36) = happyShift action_16
action_2 (6) = happyGoto action_38
action_2 (7) = happyGoto action_4
action_2 (11) = happyGoto action_5
action_2 (12) = happyGoto action_6
action_2 (13) = happyGoto action_7
action_2 (14) = happyGoto action_8
action_2 (15) = happyGoto action_9
action_2 (16) = happyGoto action_10
action_2 _ = happyReduce_1

action_3 _ = happyReduce_2

action_4 (18) = happyShift action_37
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (18) = happyShift action_35
action_5 (19) = happyShift action_36
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (18) = happyShift action_33
action_6 (19) = happyShift action_34
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (18) = happyShift action_32
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (18) = happyShift action_31
action_8 _ = happyFail (happyExpListPerState 8)

action_9 _ = happyReduce_10

action_10 _ = happyReduce_11

action_11 (20) = happyShift action_21
action_11 (26) = happyShift action_22
action_11 (32) = happyShift action_23
action_11 (33) = happyShift action_24
action_11 (38) = happyShift action_25
action_11 (39) = happyShift action_26
action_11 (8) = happyGoto action_30
action_11 (9) = happyGoto action_19
action_11 (10) = happyGoto action_20
action_11 _ = happyFail (happyExpListPerState 11)

action_12 _ = happyReduce_5

action_13 (32) = happyShift action_29
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (25) = happyShift action_28
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (20) = happyShift action_21
action_15 (26) = happyShift action_22
action_15 (32) = happyShift action_23
action_15 (33) = happyShift action_24
action_15 (38) = happyShift action_25
action_15 (39) = happyShift action_26
action_15 (8) = happyGoto action_27
action_15 (9) = happyGoto action_19
action_15 (10) = happyGoto action_20
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (20) = happyShift action_21
action_16 (26) = happyShift action_22
action_16 (32) = happyShift action_23
action_16 (33) = happyShift action_24
action_16 (38) = happyShift action_25
action_16 (39) = happyShift action_26
action_16 (8) = happyGoto action_18
action_16 (9) = happyGoto action_19
action_16 (10) = happyGoto action_20
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (40) = happyAccept
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (17) = happyShift action_11
action_18 (18) = happyShift action_12
action_18 (31) = happyShift action_13
action_18 (32) = happyShift action_14
action_18 (34) = happyShift action_15
action_18 (36) = happyShift action_16
action_18 (5) = happyGoto action_52
action_18 (6) = happyGoto action_3
action_18 (7) = happyGoto action_4
action_18 (11) = happyGoto action_5
action_18 (12) = happyGoto action_6
action_18 (13) = happyGoto action_7
action_18 (14) = happyGoto action_8
action_18 (15) = happyGoto action_9
action_18 (16) = happyGoto action_10
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (28) = happyShift action_50
action_19 (29) = happyShift action_51
action_19 _ = happyReduce_14

action_20 (21) = happyShift action_46
action_20 (22) = happyShift action_47
action_20 (23) = happyShift action_48
action_20 (24) = happyShift action_49
action_20 _ = happyReduce_13

action_21 _ = happyReduce_19

action_22 (20) = happyShift action_21
action_22 (26) = happyShift action_22
action_22 (32) = happyShift action_23
action_22 (33) = happyShift action_24
action_22 (10) = happyGoto action_45
action_22 _ = happyFail (happyExpListPerState 22)

action_23 _ = happyReduce_20

action_24 (26) = happyShift action_44
action_24 _ = happyFail (happyExpListPerState 24)

action_25 _ = happyReduce_15

action_26 _ = happyReduce_16

action_27 (17) = happyShift action_11
action_27 (18) = happyShift action_12
action_27 (31) = happyShift action_13
action_27 (32) = happyShift action_14
action_27 (34) = happyShift action_15
action_27 (36) = happyShift action_16
action_27 (5) = happyGoto action_43
action_27 (6) = happyGoto action_3
action_27 (7) = happyGoto action_4
action_27 (11) = happyGoto action_5
action_27 (12) = happyGoto action_6
action_27 (13) = happyGoto action_7
action_27 (14) = happyGoto action_8
action_27 (15) = happyGoto action_9
action_27 (16) = happyGoto action_10
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (20) = happyShift action_21
action_28 (26) = happyShift action_22
action_28 (32) = happyShift action_23
action_28 (33) = happyShift action_24
action_28 (38) = happyShift action_25
action_28 (39) = happyShift action_26
action_28 (8) = happyGoto action_42
action_28 (9) = happyGoto action_19
action_28 (10) = happyGoto action_20
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (25) = happyShift action_41
action_29 _ = happyReduce_29

action_30 _ = happyReduce_12

action_31 _ = happyReduce_9

action_32 _ = happyReduce_8

action_33 _ = happyReduce_6

action_34 (32) = happyShift action_40
action_34 _ = happyFail (happyExpListPerState 34)

action_35 _ = happyReduce_7

action_36 (32) = happyShift action_39
action_36 _ = happyFail (happyExpListPerState 36)

action_37 _ = happyReduce_4

action_38 _ = happyReduce_3

action_39 _ = happyReduce_28

action_40 _ = happyReduce_27

action_41 (20) = happyShift action_21
action_41 (26) = happyShift action_22
action_41 (32) = happyShift action_23
action_41 (33) = happyShift action_24
action_41 (38) = happyShift action_25
action_41 (39) = happyShift action_26
action_41 (8) = happyGoto action_63
action_41 (9) = happyGoto action_19
action_41 (10) = happyGoto action_20
action_41 _ = happyFail (happyExpListPerState 41)

action_42 _ = happyReduce_30

action_43 (17) = happyShift action_11
action_43 (18) = happyShift action_12
action_43 (31) = happyShift action_13
action_43 (32) = happyShift action_14
action_43 (34) = happyShift action_15
action_43 (35) = happyShift action_62
action_43 (36) = happyShift action_16
action_43 (6) = happyGoto action_38
action_43 (7) = happyGoto action_4
action_43 (11) = happyGoto action_5
action_43 (12) = happyGoto action_6
action_43 (13) = happyGoto action_7
action_43 (14) = happyGoto action_8
action_43 (15) = happyGoto action_9
action_43 (16) = happyGoto action_10
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (27) = happyShift action_61
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (21) = happyShift action_46
action_45 (22) = happyShift action_47
action_45 (23) = happyShift action_48
action_45 (24) = happyShift action_49
action_45 (27) = happyShift action_60
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (20) = happyShift action_21
action_46 (26) = happyShift action_22
action_46 (32) = happyShift action_23
action_46 (33) = happyShift action_24
action_46 (10) = happyGoto action_59
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (20) = happyShift action_21
action_47 (26) = happyShift action_22
action_47 (32) = happyShift action_23
action_47 (33) = happyShift action_24
action_47 (10) = happyGoto action_58
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (20) = happyShift action_21
action_48 (26) = happyShift action_22
action_48 (32) = happyShift action_23
action_48 (33) = happyShift action_24
action_48 (10) = happyGoto action_57
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (20) = happyShift action_21
action_49 (26) = happyShift action_22
action_49 (32) = happyShift action_23
action_49 (33) = happyShift action_24
action_49 (10) = happyGoto action_56
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (38) = happyShift action_25
action_50 (39) = happyShift action_26
action_50 (9) = happyGoto action_55
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (38) = happyShift action_25
action_51 (39) = happyShift action_26
action_51 (9) = happyGoto action_54
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (17) = happyShift action_11
action_52 (18) = happyShift action_12
action_52 (31) = happyShift action_13
action_52 (32) = happyShift action_14
action_52 (34) = happyShift action_15
action_52 (36) = happyShift action_16
action_52 (37) = happyShift action_53
action_52 (6) = happyGoto action_38
action_52 (7) = happyGoto action_4
action_52 (11) = happyGoto action_5
action_52 (12) = happyGoto action_6
action_52 (13) = happyGoto action_7
action_52 (14) = happyGoto action_8
action_52 (15) = happyGoto action_9
action_52 (16) = happyGoto action_10
action_52 _ = happyFail (happyExpListPerState 52)

action_53 _ = happyReduce_33

action_54 (28) = happyShift action_50
action_54 (29) = happyShift action_51
action_54 _ = happyReduce_18

action_55 (28) = happyShift action_50
action_55 (29) = happyShift action_51
action_55 _ = happyReduce_17

action_56 _ = happyReduce_25

action_57 _ = happyReduce_24

action_58 (23) = happyShift action_48
action_58 (24) = happyShift action_49
action_58 _ = happyReduce_23

action_59 (22) = happyShift action_47
action_59 (23) = happyShift action_48
action_59 (24) = happyShift action_49
action_59 _ = happyReduce_22

action_60 _ = happyReduce_21

action_61 _ = happyReduce_26

action_62 _ = happyReduce_32

action_63 _ = happyReduce_31

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1 ++ "\tSTOP\n"
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  5 happyReduction_2
happyReduction_2 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_2 _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_2  5 happyReduction_3
happyReduction_3 (HappyAbsSyn6  happy_var_2)
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1 ++ happy_var_2
	)
happyReduction_3 _ _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_2  6 happyReduction_4
happyReduction_4 _
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_4 _ _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_1  6 happyReduction_5
happyReduction_5 _
	 =  HappyAbsSyn6
		 (""
	)

happyReduce_6 = happySpecReduce_2  6 happyReduction_6
happyReduction_6 _
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_6 _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_2  6 happyReduction_7
happyReduction_7 _
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_7 _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_2  6 happyReduction_8
happyReduction_8 _
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_8 _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_2  6 happyReduction_9
happyReduction_9 _
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_9 _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_1  6 happyReduction_10
happyReduction_10 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_1  6 happyReduction_11
happyReduction_11 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_11 _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_2  7 happyReduction_12
happyReduction_12 (HappyAbsSyn8  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (";/ print...\n" ++ happy_var_2 ++ "\tOUT\n"
	)
happyReduction_12 _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_1  8 happyReduction_13
happyReduction_13 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1
	)
happyReduction_13 _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_1  8 happyReduction_14
happyReduction_14 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1
	)
happyReduction_14 _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_1  9 happyReduction_15
happyReduction_15 _
	 =  HappyAbsSyn9
		 ("\tPUSH\t" ++ "1" ++ "\n"
	)

happyReduce_16 = happySpecReduce_1  9 happyReduction_16
happyReduction_16 _
	 =  HappyAbsSyn9
		 ("\tPUSH\t" ++ "0" ++ "\n"
	)

happyReduce_17 = happySpecReduce_3  9 happyReduction_17
happyReduction_17 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1 ++ happy_var_3 ++ "\tAND\n"
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  9 happyReduction_18
happyReduction_18 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1 ++ happy_var_3 ++ "\tOR\n"
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_1  10 happyReduction_19
happyReduction_19 (HappyTerminal (TK _ (INT happy_var_1)))
	 =  HappyAbsSyn10
		 ("\tPUSH\t" ++ (show happy_var_1) ++ "\n"
	)
happyReduction_19 _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_1  10 happyReduction_20
happyReduction_20 (HappyTerminal (TK _ (VAR happy_var_1)))
	 =  HappyAbsSyn10
		 ("\tPUSH\t" ++ happy_var_1 ++ "\n" ++ "\tLOAD\n"
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  10 happyReduction_21
happyReduction_21 _
	(HappyAbsSyn10  happy_var_2)
	_
	 =  HappyAbsSyn10
		 (happy_var_2
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  10 happyReduction_22
happyReduction_22 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_1 ++ happy_var_3 ++ "\tADD\n"
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  10 happyReduction_23
happyReduction_23 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_1 ++ happy_var_3 ++ "\tSUB\n"
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  10 happyReduction_24
happyReduction_24 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_1 ++ happy_var_3 ++ "\tMUL\n"
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  10 happyReduction_25
happyReduction_25 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_1 ++ happy_var_3 ++ "\tDIV\n"
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  10 happyReduction_26
happyReduction_26 _
	_
	_
	 =  HappyAbsSyn10
		 ("\tIN\n"
	)

happyReduce_27 = happySpecReduce_3  11 happyReduction_27
happyReduction_27 (HappyTerminal (TK _ (VAR happy_var_3)))
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn11
		 (happy_var_1 ++ happy_var_3 ++ "\tDS\t" ++ "1\n"
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  11 happyReduction_28
happyReduction_28 (HappyTerminal (TK _ (VAR happy_var_3)))
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (happy_var_1 ++ happy_var_3 ++ "\tDS\t" ++ "1\n"
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_2  12 happyReduction_29
happyReduction_29 (HappyTerminal (TK _ (VAR happy_var_2)))
	_
	 =  HappyAbsSyn12
		 (happy_var_2 ++ "\tDS\t" ++ "1\n"
	)
happyReduction_29 _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  13 happyReduction_30
happyReduction_30 (HappyAbsSyn8  happy_var_3)
	_
	(HappyTerminal (TK _ (VAR happy_var_1)))
	 =  HappyAbsSyn13
		 ("\tPUSH\t" ++ happy_var_1 ++ "\n" ++ happy_var_3 ++ "\tSTORE\n"
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happyReduce 4 14 happyReduction_31
happyReduction_31 ((HappyAbsSyn8  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TK _ (VAR happy_var_2))) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (happy_var_2 ++ "\tDS\t" ++ "1\n" ++ "\tPUSH\t" ++ happy_var_2 ++ "\n" ++ happy_var_4 ++ "\tSTORE\n"
	) `HappyStk` happyRest

happyReduce_32 = happyMonadReduce 4 15 happyReduction_32
happyReduction_32 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	(HappyAbsSyn8  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest) tk
	 = happyThen ((( if_then happy_var_2 happy_var_3))
	) (\r -> happyReturn (HappyAbsSyn15 r))

happyReduce_33 = happyReduce 4 16 happyReduction_33
happyReduction_33 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	(HappyAbsSyn8  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn16
		 ("debut\tEQU\t*\n" ++ happy_var_2 ++ "\tBEZ\t finwhile\n" ++ happy_var_3 ++ "\tPUSH\t debut\n\tGOTO\n" ++ "finwhile\tEQU\t*\n"
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 40 40 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TK _ PRINT -> cont 17;
	TK _ SEP -> cont 18;
	TK _ COM -> cont 19;
	TK _ (INT happy_dollar_dollar) -> cont 20;
	TK _ PLUS -> cont 21;
	TK _ SUB -> cont 22;
	TK _ MULT -> cont 23;
	TK _ DIV -> cont 24;
	TK _ EQU -> cont 25;
	TK _ LPAR -> cont 26;
	TK _ RPAR -> cont 27;
	TK _ AND -> cont 28;
	TK _ OR -> cont 29;
	TK _ NOT -> cont 30;
	TK _ LET -> cont 31;
	TK _ (VAR happy_dollar_dollar) -> cont 32;
	TK _ INP -> cont 33;
	TK _ IF -> cont 34;
	TK _ EIF -> cont 35;
	TK _ WH -> cont 36;
	TK _ EWH -> cont 37;
	TK _ TRUE -> cont 38;
	TK _ FALSE -> cont 39;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 40 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

happyThen :: () => ParseResult a -> (a -> ParseResult b) -> ParseResult b
happyThen = (Prelude.>>=)
happyReturn :: () => a -> ParseResult a
happyReturn = (Prelude.return)
happyThen1 m k tks = (Prelude.>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> ParseResult a
happyReturn1 = \a tks -> (Prelude.return) a
happyError' :: () => ([(Token)], [Prelude.String]) -> ParseResult a
happyError' = (\(tokens, _) -> parseError tokens)
parse tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


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
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Prelude.Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x Prelude.< y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `Prelude.div` 16)) (bit `Prelude.mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Prelude.Int ->                    -- token number
         Prelude.Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k Prelude.- ((1) :: Prelude.Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Prelude.Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n Prelude.- ((1) :: Prelude.Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n Prelude.- ((1)::Prelude.Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = Prelude.error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `Prelude.seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.