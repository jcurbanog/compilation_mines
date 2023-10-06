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

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17
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
	| HappyAbsSyn17 t17

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,186) ([0,6,75,12288,22528,2,384,4800,0,0,0,16384,0,0,1536,0,0,48,0,32768,0,0,1024,0,0,0,0,0,0,0,0,0,0,17664,12384,0,0,0,0,2048,0,16384,0,0,1104,774,32768,12322,24,0,0,0,12,150,0,1536,0,61440,8,0,0,0,0,49290,0,20480,1540,0,0,0,0,256,0,0,0,0,0,0,0,32771,37,16384,6161,12,16384,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,8,0,0,0,0,0,0,0,0,0,0,0,40960,3080,6,0,0,0,32771,61,0,32,0,15360,3,0,384,0,32768,12322,0,5120,385,0,2208,12,0,24645,0,10240,770,0,0,3072,0,0,96,1536,51968,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,12288,0,0,448,0,0,0,0,0,0,0,12,150,0,0,0,0,0,0,24,428,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parse","Program","Linst","Inst","Print","Expr","BoolExpr","ArExpr","LInit","Init","Def","InitDef","If","IfElse","While","print","';'","','","integer","'+'","'-'","'*'","'/'","'='","'('","')'","mod","and","or","not","let","var","input","if","else","endif","while","endwhile","true","false","%eof"]
        bit_start = st Prelude.* 43
        bit_end = (st Prelude.+ 1) Prelude.* 43
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..42]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (18) = happyShift action_12
action_0 (19) = happyShift action_13
action_0 (33) = happyShift action_14
action_0 (34) = happyShift action_15
action_0 (36) = happyShift action_16
action_0 (39) = happyShift action_17
action_0 (4) = happyGoto action_18
action_0 (5) = happyGoto action_2
action_0 (6) = happyGoto action_3
action_0 (7) = happyGoto action_4
action_0 (11) = happyGoto action_5
action_0 (12) = happyGoto action_6
action_0 (13) = happyGoto action_7
action_0 (14) = happyGoto action_8
action_0 (15) = happyGoto action_9
action_0 (16) = happyGoto action_10
action_0 (17) = happyGoto action_11
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (18) = happyShift action_12
action_1 (19) = happyShift action_13
action_1 (33) = happyShift action_14
action_1 (34) = happyShift action_15
action_1 (36) = happyShift action_16
action_1 (39) = happyShift action_17
action_1 (5) = happyGoto action_2
action_1 (6) = happyGoto action_3
action_1 (7) = happyGoto action_4
action_1 (11) = happyGoto action_5
action_1 (12) = happyGoto action_6
action_1 (13) = happyGoto action_7
action_1 (14) = happyGoto action_8
action_1 (15) = happyGoto action_9
action_1 (16) = happyGoto action_10
action_1 (17) = happyGoto action_11
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (18) = happyShift action_12
action_2 (19) = happyShift action_13
action_2 (33) = happyShift action_14
action_2 (34) = happyShift action_15
action_2 (36) = happyShift action_16
action_2 (39) = happyShift action_17
action_2 (6) = happyGoto action_40
action_2 (7) = happyGoto action_4
action_2 (11) = happyGoto action_5
action_2 (12) = happyGoto action_6
action_2 (13) = happyGoto action_7
action_2 (14) = happyGoto action_8
action_2 (15) = happyGoto action_9
action_2 (16) = happyGoto action_10
action_2 (17) = happyGoto action_11
action_2 _ = happyReduce_1

action_3 _ = happyReduce_2

action_4 (19) = happyShift action_39
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (19) = happyShift action_37
action_5 (20) = happyShift action_38
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (19) = happyShift action_35
action_6 (20) = happyShift action_36
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (19) = happyShift action_34
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (19) = happyShift action_33
action_8 _ = happyFail (happyExpListPerState 8)

action_9 _ = happyReduce_10

action_10 _ = happyReduce_11

action_11 _ = happyReduce_12

action_12 (21) = happyShift action_22
action_12 (23) = happyShift action_23
action_12 (27) = happyShift action_24
action_12 (34) = happyShift action_25
action_12 (35) = happyShift action_26
action_12 (41) = happyShift action_27
action_12 (42) = happyShift action_28
action_12 (8) = happyGoto action_32
action_12 (9) = happyGoto action_20
action_12 (10) = happyGoto action_21
action_12 _ = happyFail (happyExpListPerState 12)

action_13 _ = happyReduce_5

action_14 (34) = happyShift action_31
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (26) = happyShift action_30
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (21) = happyShift action_22
action_16 (23) = happyShift action_23
action_16 (27) = happyShift action_24
action_16 (34) = happyShift action_25
action_16 (35) = happyShift action_26
action_16 (41) = happyShift action_27
action_16 (42) = happyShift action_28
action_16 (8) = happyGoto action_29
action_16 (9) = happyGoto action_20
action_16 (10) = happyGoto action_21
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (21) = happyShift action_22
action_17 (23) = happyShift action_23
action_17 (27) = happyShift action_24
action_17 (34) = happyShift action_25
action_17 (35) = happyShift action_26
action_17 (41) = happyShift action_27
action_17 (42) = happyShift action_28
action_17 (8) = happyGoto action_19
action_17 (9) = happyGoto action_20
action_17 (10) = happyGoto action_21
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (43) = happyAccept
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (18) = happyShift action_12
action_19 (19) = happyShift action_13
action_19 (33) = happyShift action_14
action_19 (34) = happyShift action_15
action_19 (36) = happyShift action_16
action_19 (39) = happyShift action_17
action_19 (5) = happyGoto action_56
action_19 (6) = happyGoto action_3
action_19 (7) = happyGoto action_4
action_19 (11) = happyGoto action_5
action_19 (12) = happyGoto action_6
action_19 (13) = happyGoto action_7
action_19 (14) = happyGoto action_8
action_19 (15) = happyGoto action_9
action_19 (16) = happyGoto action_10
action_19 (17) = happyGoto action_11
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (30) = happyShift action_54
action_20 (31) = happyShift action_55
action_20 _ = happyReduce_15

action_21 (22) = happyShift action_49
action_21 (23) = happyShift action_50
action_21 (24) = happyShift action_51
action_21 (25) = happyShift action_52
action_21 (29) = happyShift action_53
action_21 _ = happyReduce_14

action_22 _ = happyReduce_20

action_23 (21) = happyShift action_22
action_23 (23) = happyShift action_23
action_23 (27) = happyShift action_24
action_23 (34) = happyShift action_25
action_23 (35) = happyShift action_26
action_23 (10) = happyGoto action_48
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (21) = happyShift action_22
action_24 (23) = happyShift action_23
action_24 (27) = happyShift action_24
action_24 (34) = happyShift action_25
action_24 (35) = happyShift action_26
action_24 (10) = happyGoto action_47
action_24 _ = happyFail (happyExpListPerState 24)

action_25 _ = happyReduce_21

action_26 (27) = happyShift action_46
action_26 _ = happyFail (happyExpListPerState 26)

action_27 _ = happyReduce_16

action_28 _ = happyReduce_17

action_29 (18) = happyShift action_12
action_29 (19) = happyShift action_13
action_29 (33) = happyShift action_14
action_29 (34) = happyShift action_15
action_29 (36) = happyShift action_16
action_29 (39) = happyShift action_17
action_29 (5) = happyGoto action_45
action_29 (6) = happyGoto action_3
action_29 (7) = happyGoto action_4
action_29 (11) = happyGoto action_5
action_29 (12) = happyGoto action_6
action_29 (13) = happyGoto action_7
action_29 (14) = happyGoto action_8
action_29 (15) = happyGoto action_9
action_29 (16) = happyGoto action_10
action_29 (17) = happyGoto action_11
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (21) = happyShift action_22
action_30 (23) = happyShift action_23
action_30 (27) = happyShift action_24
action_30 (34) = happyShift action_25
action_30 (35) = happyShift action_26
action_30 (41) = happyShift action_27
action_30 (42) = happyShift action_28
action_30 (8) = happyGoto action_44
action_30 (9) = happyGoto action_20
action_30 (10) = happyGoto action_21
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (26) = happyShift action_43
action_31 _ = happyReduce_32

action_32 _ = happyReduce_13

action_33 _ = happyReduce_9

action_34 _ = happyReduce_8

action_35 _ = happyReduce_6

action_36 (34) = happyShift action_42
action_36 _ = happyFail (happyExpListPerState 36)

action_37 _ = happyReduce_7

action_38 (34) = happyShift action_41
action_38 _ = happyFail (happyExpListPerState 38)

action_39 _ = happyReduce_4

action_40 _ = happyReduce_3

action_41 _ = happyReduce_31

action_42 _ = happyReduce_30

action_43 (21) = happyShift action_22
action_43 (23) = happyShift action_23
action_43 (27) = happyShift action_24
action_43 (34) = happyShift action_25
action_43 (35) = happyShift action_26
action_43 (41) = happyShift action_27
action_43 (42) = happyShift action_28
action_43 (8) = happyGoto action_69
action_43 (9) = happyGoto action_20
action_43 (10) = happyGoto action_21
action_43 _ = happyFail (happyExpListPerState 43)

action_44 _ = happyReduce_33

action_45 (18) = happyShift action_12
action_45 (19) = happyShift action_13
action_45 (33) = happyShift action_14
action_45 (34) = happyShift action_15
action_45 (36) = happyShift action_16
action_45 (37) = happyShift action_67
action_45 (38) = happyShift action_68
action_45 (39) = happyShift action_17
action_45 (6) = happyGoto action_40
action_45 (7) = happyGoto action_4
action_45 (11) = happyGoto action_5
action_45 (12) = happyGoto action_6
action_45 (13) = happyGoto action_7
action_45 (14) = happyGoto action_8
action_45 (15) = happyGoto action_9
action_45 (16) = happyGoto action_10
action_45 (17) = happyGoto action_11
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (28) = happyShift action_66
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (22) = happyShift action_49
action_47 (23) = happyShift action_50
action_47 (24) = happyShift action_51
action_47 (25) = happyShift action_52
action_47 (28) = happyShift action_65
action_47 (29) = happyShift action_53
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (24) = happyShift action_51
action_48 (25) = happyShift action_52
action_48 (29) = happyShift action_53
action_48 _ = happyReduce_27

action_49 (21) = happyShift action_22
action_49 (23) = happyShift action_23
action_49 (27) = happyShift action_24
action_49 (34) = happyShift action_25
action_49 (35) = happyShift action_26
action_49 (10) = happyGoto action_64
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (21) = happyShift action_22
action_50 (23) = happyShift action_23
action_50 (27) = happyShift action_24
action_50 (34) = happyShift action_25
action_50 (35) = happyShift action_26
action_50 (10) = happyGoto action_63
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (21) = happyShift action_22
action_51 (23) = happyShift action_23
action_51 (27) = happyShift action_24
action_51 (34) = happyShift action_25
action_51 (35) = happyShift action_26
action_51 (10) = happyGoto action_62
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (21) = happyShift action_22
action_52 (23) = happyShift action_23
action_52 (27) = happyShift action_24
action_52 (34) = happyShift action_25
action_52 (35) = happyShift action_26
action_52 (10) = happyGoto action_61
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (21) = happyShift action_22
action_53 (23) = happyShift action_23
action_53 (27) = happyShift action_24
action_53 (34) = happyShift action_25
action_53 (35) = happyShift action_26
action_53 (10) = happyGoto action_60
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (41) = happyShift action_27
action_54 (42) = happyShift action_28
action_54 (9) = happyGoto action_59
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (41) = happyShift action_27
action_55 (42) = happyShift action_28
action_55 (9) = happyGoto action_58
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (18) = happyShift action_12
action_56 (19) = happyShift action_13
action_56 (33) = happyShift action_14
action_56 (34) = happyShift action_15
action_56 (36) = happyShift action_16
action_56 (39) = happyShift action_17
action_56 (40) = happyShift action_57
action_56 (6) = happyGoto action_40
action_56 (7) = happyGoto action_4
action_56 (11) = happyGoto action_5
action_56 (12) = happyGoto action_6
action_56 (13) = happyGoto action_7
action_56 (14) = happyGoto action_8
action_56 (15) = happyGoto action_9
action_56 (16) = happyGoto action_10
action_56 (17) = happyGoto action_11
action_56 _ = happyFail (happyExpListPerState 56)

action_57 _ = happyReduce_37

action_58 (30) = happyShift action_54
action_58 (31) = happyShift action_55
action_58 _ = happyReduce_19

action_59 (30) = happyShift action_54
action_59 (31) = happyShift action_55
action_59 _ = happyReduce_18

action_60 (22) = happyShift action_49
action_60 (23) = happyShift action_50
action_60 (24) = happyShift action_51
action_60 (25) = happyShift action_52
action_60 (29) = happyShift action_53
action_60 _ = happyReduce_28

action_61 (29) = happyShift action_53
action_61 _ = happyReduce_26

action_62 (29) = happyShift action_53
action_62 _ = happyReduce_25

action_63 (24) = happyShift action_51
action_63 (25) = happyShift action_52
action_63 (29) = happyShift action_53
action_63 _ = happyReduce_24

action_64 (23) = happyShift action_50
action_64 (24) = happyShift action_51
action_64 (25) = happyShift action_52
action_64 (29) = happyShift action_53
action_64 _ = happyReduce_23

action_65 _ = happyReduce_22

action_66 _ = happyReduce_29

action_67 (18) = happyShift action_12
action_67 (19) = happyShift action_13
action_67 (33) = happyShift action_14
action_67 (34) = happyShift action_15
action_67 (36) = happyShift action_16
action_67 (39) = happyShift action_17
action_67 (5) = happyGoto action_70
action_67 (6) = happyGoto action_3
action_67 (7) = happyGoto action_4
action_67 (11) = happyGoto action_5
action_67 (12) = happyGoto action_6
action_67 (13) = happyGoto action_7
action_67 (14) = happyGoto action_8
action_67 (15) = happyGoto action_9
action_67 (16) = happyGoto action_10
action_67 (17) = happyGoto action_11
action_67 _ = happyFail (happyExpListPerState 67)

action_68 _ = happyReduce_35

action_69 _ = happyReduce_34

action_70 (18) = happyShift action_12
action_70 (19) = happyShift action_13
action_70 (33) = happyShift action_14
action_70 (34) = happyShift action_15
action_70 (36) = happyShift action_16
action_70 (38) = happyShift action_71
action_70 (39) = happyShift action_17
action_70 (6) = happyGoto action_40
action_70 (7) = happyGoto action_4
action_70 (11) = happyGoto action_5
action_70 (12) = happyGoto action_6
action_70 (13) = happyGoto action_7
action_70 (14) = happyGoto action_8
action_70 (15) = happyGoto action_9
action_70 (16) = happyGoto action_10
action_70 (17) = happyGoto action_11
action_70 _ = happyFail (happyExpListPerState 70)

action_71 _ = happyReduce_36

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

happyReduce_12 = happySpecReduce_1  6 happyReduction_12
happyReduction_12 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_2  7 happyReduction_13
happyReduction_13 (HappyAbsSyn8  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (";/ print...\n" ++ happy_var_2 ++ "\tOUT\n"
	)
happyReduction_13 _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_1  8 happyReduction_14
happyReduction_14 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1
	)
happyReduction_14 _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_1  8 happyReduction_15
happyReduction_15 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1
	)
happyReduction_15 _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_1  9 happyReduction_16
happyReduction_16 _
	 =  HappyAbsSyn9
		 ("\tPUSH\t" ++ "1" ++ "\n"
	)

happyReduce_17 = happySpecReduce_1  9 happyReduction_17
happyReduction_17 _
	 =  HappyAbsSyn9
		 ("\tPUSH\t" ++ "0" ++ "\n"
	)

happyReduce_18 = happySpecReduce_3  9 happyReduction_18
happyReduction_18 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1 ++ happy_var_3 ++ "\tAND\n"
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  9 happyReduction_19
happyReduction_19 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1 ++ happy_var_3 ++ "\tOR\n"
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_1  10 happyReduction_20
happyReduction_20 (HappyTerminal (TK _ (INT happy_var_1)))
	 =  HappyAbsSyn10
		 ("\tPUSH\t" ++ (show happy_var_1) ++ "\n"
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  10 happyReduction_21
happyReduction_21 (HappyTerminal (TK _ (VAR happy_var_1)))
	 =  HappyAbsSyn10
		 ("\tPUSH\t" ++ happy_var_1 ++ "\n" ++ "\tLOAD\n"
	)
happyReduction_21 _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  10 happyReduction_22
happyReduction_22 _
	(HappyAbsSyn10  happy_var_2)
	_
	 =  HappyAbsSyn10
		 (happy_var_2
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  10 happyReduction_23
happyReduction_23 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_1 ++ happy_var_3 ++ "\tADD\n"
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  10 happyReduction_24
happyReduction_24 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_1 ++ happy_var_3 ++ "\tSUB\n"
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  10 happyReduction_25
happyReduction_25 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_1 ++ happy_var_3 ++ "\tMUL\n"
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  10 happyReduction_26
happyReduction_26 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_1 ++ happy_var_3 ++ "\tDIV\n"
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_2  10 happyReduction_27
happyReduction_27 (HappyAbsSyn10  happy_var_2)
	_
	 =  HappyAbsSyn10
		 ("\tPUSH\t0\n\tPUSH\t1\n\tSUB\n" ++ happy_var_2 ++ "\tMUL\n"
	)
happyReduction_27 _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  10 happyReduction_28
happyReduction_28 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_1 ++ happy_var_3 ++ happy_var_1 ++ happy_var_3 ++ "\tDIV\n" ++ "\tMUL\n" ++ "\tSUB\n"
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  10 happyReduction_29
happyReduction_29 _
	_
	_
	 =  HappyAbsSyn10
		 ("\tIN\n"
	)

happyReduce_30 = happySpecReduce_3  11 happyReduction_30
happyReduction_30 (HappyTerminal (TK _ (VAR happy_var_3)))
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn11
		 (happy_var_1 ++ happy_var_3 ++ "\tDS\t" ++ "1\n"
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  11 happyReduction_31
happyReduction_31 (HappyTerminal (TK _ (VAR happy_var_3)))
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (happy_var_1 ++ happy_var_3 ++ "\tDS\t" ++ "1\n"
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_2  12 happyReduction_32
happyReduction_32 (HappyTerminal (TK _ (VAR happy_var_2)))
	_
	 =  HappyAbsSyn12
		 (happy_var_2 ++ "\tDS\t" ++ "1\n"
	)
happyReduction_32 _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  13 happyReduction_33
happyReduction_33 (HappyAbsSyn8  happy_var_3)
	_
	(HappyTerminal (TK _ (VAR happy_var_1)))
	 =  HappyAbsSyn13
		 ("\tPUSH\t" ++ happy_var_1 ++ "\n" ++ happy_var_3 ++ "\tSTORE\n"
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happyReduce 4 14 happyReduction_34
happyReduction_34 ((HappyAbsSyn8  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TK _ (VAR happy_var_2))) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (happy_var_2 ++ "\tDS\t" ++ "1\n" ++ "\tPUSH\t" ++ happy_var_2 ++ "\n" ++ happy_var_4 ++ "\tSTORE\n"
	) `HappyStk` happyRest

happyReduce_35 = happyMonadReduce 4 15 happyReduction_35
happyReduction_35 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	(HappyAbsSyn8  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest) tk
	 = happyThen ((( if_then happy_var_2 happy_var_3))
	) (\r -> happyReturn (HappyAbsSyn15 r))

happyReduce_36 = happyMonadReduce 6 16 happyReduction_36
happyReduction_36 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	(HappyAbsSyn8  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest) tk
	 = happyThen ((( if_then_else happy_var_2 happy_var_3 happy_var_5))
	) (\r -> happyReturn (HappyAbsSyn16 r))

happyReduce_37 = happyMonadReduce 4 17 happyReduction_37
happyReduction_37 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	(HappyAbsSyn8  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest) tk
	 = happyThen ((( while_do happy_var_2 happy_var_3))
	) (\r -> happyReturn (HappyAbsSyn17 r))

happyNewToken action sts stk [] =
	action 43 43 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TK _ PRINT -> cont 18;
	TK _ SEP -> cont 19;
	TK _ COM -> cont 20;
	TK _ (INT happy_dollar_dollar) -> cont 21;
	TK _ PLUS -> cont 22;
	TK _ SUB -> cont 23;
	TK _ MULT -> cont 24;
	TK _ DIV -> cont 25;
	TK _ EQU -> cont 26;
	TK _ LPAR -> cont 27;
	TK _ RPAR -> cont 28;
	TK _ MOD -> cont 29;
	TK _ AND -> cont 30;
	TK _ OR -> cont 31;
	TK _ NOT -> cont 32;
	TK _ LET -> cont 33;
	TK _ (VAR happy_dollar_dollar) -> cont 34;
	TK _ INP -> cont 35;
	TK _ IF -> cont 36;
	TK _ ELSE -> cont 37;
	TK _ EIF -> cont 38;
	TK _ WH -> cont 39;
	TK _ EWH -> cont 40;
	TK _ TRUE -> cont 41;
	TK _ FALSE -> cont 42;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 43 tk tks = happyError' (tks, explist)
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

if_then_else :: String -> String -> String -> ParseResult String
if_then_else cond then_linst else_linst = do
  s <- get
  let else_name = "else" ++ show (counter s)
  let endif_name = "endif" ++ show (counter s)
  let s' = incrCounter s
  put s'
  return (
    cond ++
    "\tBEZ\t" ++ else_name ++ "\n" ++
    then_linst ++
    "\tPUSH\t" ++ endif_name ++ "\n\tGOTO\n" ++
    else_name ++ "\tEQU\t*\n" ++ else_linst ++
    endif_name ++ "\tEQU\t*\n")

while_do :: String -> String -> ParseResult String
while_do cond linst = do
  s <- get
  let while_name = "while" ++ show (counter s)
  let endwhile_name = "endwhile" ++ show (counter s)
  let s' = incrCounter s
  put s'
  return (
    while_name ++ "\tEQU\t*\n" ++
    cond ++
    "\tBEZ\t" ++ endwhile_name ++ "\n" ++
    linst ++
    "\tPUSH\t" ++ while_name ++ "\n\tGOTO\n" ++
    endwhile_name ++ "\tEQU\t*\n")

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
