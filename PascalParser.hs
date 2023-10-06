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

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19
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
	| HappyAbsSyn18 t18
	| HappyAbsSyn19 t19

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,273) ([0,24,4800,3,384,11264,49,6144,49152,786,0,0,0,0,16,0,0,768,0,0,12288,0,0,0,1,0,0,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,256,0,0,16384,40977,193,0,0,0,0,0,128,0,32768,1,0,16384,40977,193,0,276,3098,0,4096,0,0,0,2048,0,0,0,0,0,256,0,0,64,0,0,384,11264,49,0,6144,0,0,28920,2,0,0,0,0,5120,6145,0,16384,32785,1,0,276,3098,0,0,0,0,0,1,0,0,0,0,0,0,0,0,24,4800,3,5120,6657,12,0,32,0,0,128,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2048,0,0,0,0,0,0,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4416,49568,0,0,0,0,0,0,0,32768,1,12780,0,8192,0,0,0,0,0,32768,9999,0,0,17016,0,0,1536,4,0,5120,6145,0,16384,32785,1,0,276,24,0,4416,384,0,32768,0,0,16384,32793,1,0,404,24,0,4416,384,0,32768,0,0,16384,40977,193,0,276,3098,0,24,12992,3,0,2,0,0,32,0,32768,1,12588,0,16,0,0,0,0,0,0,0,0,0,0,0,0,4416,384,0,0,0,0,32768,1031,0,0,276,24,0,1920,4,0,5120,6145,0,16384,32785,1,0,16384,0,0,0,4,0,24576,64,0,0,1031,0,0,0,0,0,0,0,0,384,11264,49,0,0,0,0,0,0,0,24,6848,3,30720,64,0,32768,1031,0,0,16504,0,0,1920,4,0,0,0,0,6144,49152,1810,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parse","Program","Linst","Inst","Print","Expr","BoolExpr","ArExpr","LInit","Init","Def","InitDef","If","IfElse","While","DecFn","CallFn","print","';'","','","integer","'+'","'-'","'*'","'/'","'='","'('","')'","'['","']'","'<'","'>'","mod","and","or","not","let","var","input","if","else","endif","while","endwhile","true","false","exit","fn","endfn","%eof"]
        bit_start = st Prelude.* 52
        bit_end = (st Prelude.+ 1) Prelude.* 52
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..51]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (20) = happyShift action_14
action_0 (21) = happyShift action_15
action_0 (39) = happyShift action_16
action_0 (40) = happyShift action_17
action_0 (42) = happyShift action_18
action_0 (45) = happyShift action_19
action_0 (49) = happyShift action_20
action_0 (50) = happyShift action_21
action_0 (4) = happyGoto action_22
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
action_0 (18) = happyGoto action_12
action_0 (19) = happyGoto action_13
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (20) = happyShift action_14
action_1 (21) = happyShift action_15
action_1 (39) = happyShift action_16
action_1 (40) = happyShift action_17
action_1 (42) = happyShift action_18
action_1 (45) = happyShift action_19
action_1 (49) = happyShift action_20
action_1 (50) = happyShift action_21
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
action_1 (18) = happyGoto action_12
action_1 (19) = happyGoto action_13
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (20) = happyShift action_14
action_2 (21) = happyShift action_15
action_2 (39) = happyShift action_16
action_2 (40) = happyShift action_17
action_2 (42) = happyShift action_18
action_2 (45) = happyShift action_19
action_2 (49) = happyShift action_20
action_2 (50) = happyShift action_21
action_2 (6) = happyGoto action_49
action_2 (7) = happyGoto action_4
action_2 (11) = happyGoto action_5
action_2 (12) = happyGoto action_6
action_2 (13) = happyGoto action_7
action_2 (14) = happyGoto action_8
action_2 (15) = happyGoto action_9
action_2 (16) = happyGoto action_10
action_2 (17) = happyGoto action_11
action_2 (18) = happyGoto action_12
action_2 (19) = happyGoto action_13
action_2 _ = happyReduce_1

action_3 _ = happyReduce_2

action_4 (21) = happyShift action_48
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (21) = happyShift action_46
action_5 (22) = happyShift action_47
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (21) = happyShift action_44
action_6 (22) = happyShift action_45
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (21) = happyShift action_43
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (21) = happyShift action_42
action_8 _ = happyFail (happyExpListPerState 8)

action_9 _ = happyReduce_10

action_10 _ = happyReduce_11

action_11 _ = happyReduce_12

action_12 _ = happyReduce_14

action_13 (21) = happyShift action_41
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (23) = happyShift action_28
action_14 (25) = happyShift action_29
action_14 (29) = happyShift action_30
action_14 (38) = happyShift action_31
action_14 (40) = happyShift action_32
action_14 (41) = happyShift action_33
action_14 (47) = happyShift action_34
action_14 (48) = happyShift action_35
action_14 (8) = happyGoto action_40
action_14 (9) = happyGoto action_26
action_14 (10) = happyGoto action_27
action_14 _ = happyFail (happyExpListPerState 14)

action_15 _ = happyReduce_5

action_16 (40) = happyShift action_39
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (28) = happyShift action_37
action_17 (29) = happyShift action_38
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (23) = happyShift action_28
action_18 (25) = happyShift action_29
action_18 (29) = happyShift action_30
action_18 (38) = happyShift action_31
action_18 (40) = happyShift action_32
action_18 (41) = happyShift action_33
action_18 (47) = happyShift action_34
action_18 (48) = happyShift action_35
action_18 (8) = happyGoto action_36
action_18 (9) = happyGoto action_26
action_18 (10) = happyGoto action_27
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (23) = happyShift action_28
action_19 (25) = happyShift action_29
action_19 (29) = happyShift action_30
action_19 (38) = happyShift action_31
action_19 (40) = happyShift action_32
action_19 (41) = happyShift action_33
action_19 (47) = happyShift action_34
action_19 (48) = happyShift action_35
action_19 (8) = happyGoto action_25
action_19 (9) = happyGoto action_26
action_19 (10) = happyGoto action_27
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (29) = happyShift action_24
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (40) = happyShift action_23
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (52) = happyAccept
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (29) = happyShift action_74
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (23) = happyShift action_73
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (20) = happyShift action_14
action_25 (21) = happyShift action_15
action_25 (39) = happyShift action_16
action_25 (40) = happyShift action_17
action_25 (42) = happyShift action_18
action_25 (45) = happyShift action_19
action_25 (49) = happyShift action_20
action_25 (50) = happyShift action_21
action_25 (5) = happyGoto action_72
action_25 (6) = happyGoto action_3
action_25 (7) = happyGoto action_4
action_25 (11) = happyGoto action_5
action_25 (12) = happyGoto action_6
action_25 (13) = happyGoto action_7
action_25 (14) = happyGoto action_8
action_25 (15) = happyGoto action_9
action_25 (16) = happyGoto action_10
action_25 (17) = happyGoto action_11
action_25 (18) = happyGoto action_12
action_25 (19) = happyGoto action_13
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (36) = happyShift action_70
action_26 (37) = happyShift action_71
action_26 _ = happyReduce_18

action_27 (24) = happyShift action_61
action_27 (25) = happyShift action_62
action_27 (26) = happyShift action_63
action_27 (27) = happyShift action_64
action_27 (28) = happyShift action_65
action_27 (33) = happyShift action_66
action_27 (34) = happyShift action_67
action_27 (35) = happyShift action_68
action_27 (38) = happyShift action_69
action_27 _ = happyReduce_17

action_28 _ = happyReduce_30

action_29 (23) = happyShift action_28
action_29 (25) = happyShift action_29
action_29 (29) = happyShift action_30
action_29 (40) = happyShift action_32
action_29 (41) = happyShift action_33
action_29 (10) = happyGoto action_60
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (23) = happyShift action_28
action_30 (25) = happyShift action_29
action_30 (29) = happyShift action_30
action_30 (40) = happyShift action_32
action_30 (41) = happyShift action_33
action_30 (10) = happyGoto action_59
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (23) = happyShift action_28
action_31 (25) = happyShift action_29
action_31 (29) = happyShift action_30
action_31 (38) = happyShift action_31
action_31 (40) = happyShift action_32
action_31 (41) = happyShift action_33
action_31 (47) = happyShift action_34
action_31 (48) = happyShift action_35
action_31 (9) = happyGoto action_57
action_31 (10) = happyGoto action_58
action_31 _ = happyFail (happyExpListPerState 31)

action_32 _ = happyReduce_31

action_33 (29) = happyShift action_56
action_33 _ = happyFail (happyExpListPerState 33)

action_34 _ = happyReduce_19

action_35 _ = happyReduce_20

action_36 (20) = happyShift action_14
action_36 (21) = happyShift action_15
action_36 (39) = happyShift action_16
action_36 (40) = happyShift action_17
action_36 (42) = happyShift action_18
action_36 (45) = happyShift action_19
action_36 (49) = happyShift action_20
action_36 (50) = happyShift action_21
action_36 (5) = happyGoto action_55
action_36 (6) = happyGoto action_3
action_36 (7) = happyGoto action_4
action_36 (11) = happyGoto action_5
action_36 (12) = happyGoto action_6
action_36 (13) = happyGoto action_7
action_36 (14) = happyGoto action_8
action_36 (15) = happyGoto action_9
action_36 (16) = happyGoto action_10
action_36 (17) = happyGoto action_11
action_36 (18) = happyGoto action_12
action_36 (19) = happyGoto action_13
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (23) = happyShift action_28
action_37 (25) = happyShift action_29
action_37 (29) = happyShift action_30
action_37 (38) = happyShift action_31
action_37 (40) = happyShift action_32
action_37 (41) = happyShift action_33
action_37 (47) = happyShift action_34
action_37 (48) = happyShift action_35
action_37 (8) = happyGoto action_54
action_37 (9) = happyGoto action_26
action_37 (10) = happyGoto action_27
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (30) = happyShift action_53
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (28) = happyShift action_52
action_39 _ = happyReduce_42

action_40 _ = happyReduce_16

action_41 _ = happyReduce_15

action_42 _ = happyReduce_9

action_43 _ = happyReduce_8

action_44 _ = happyReduce_6

action_45 (40) = happyShift action_51
action_45 _ = happyFail (happyExpListPerState 45)

action_46 _ = happyReduce_7

action_47 (40) = happyShift action_50
action_47 _ = happyFail (happyExpListPerState 47)

action_48 _ = happyReduce_4

action_49 _ = happyReduce_3

action_50 _ = happyReduce_41

action_51 _ = happyReduce_40

action_52 (23) = happyShift action_28
action_52 (25) = happyShift action_29
action_52 (29) = happyShift action_30
action_52 (38) = happyShift action_31
action_52 (40) = happyShift action_32
action_52 (41) = happyShift action_33
action_52 (47) = happyShift action_34
action_52 (48) = happyShift action_35
action_52 (8) = happyGoto action_95
action_52 (9) = happyGoto action_26
action_52 (10) = happyGoto action_27
action_52 _ = happyFail (happyExpListPerState 52)

action_53 _ = happyReduce_49

action_54 _ = happyReduce_43

action_55 (20) = happyShift action_14
action_55 (21) = happyShift action_15
action_55 (39) = happyShift action_16
action_55 (40) = happyShift action_17
action_55 (42) = happyShift action_18
action_55 (43) = happyShift action_93
action_55 (44) = happyShift action_94
action_55 (45) = happyShift action_19
action_55 (49) = happyShift action_20
action_55 (50) = happyShift action_21
action_55 (6) = happyGoto action_49
action_55 (7) = happyGoto action_4
action_55 (11) = happyGoto action_5
action_55 (12) = happyGoto action_6
action_55 (13) = happyGoto action_7
action_55 (14) = happyGoto action_8
action_55 (15) = happyGoto action_9
action_55 (16) = happyGoto action_10
action_55 (17) = happyGoto action_11
action_55 (18) = happyGoto action_12
action_55 (19) = happyGoto action_13
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (30) = happyShift action_92
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (36) = happyShift action_70
action_57 (37) = happyShift action_71
action_57 _ = happyReduce_29

action_58 (24) = happyShift action_61
action_58 (25) = happyShift action_62
action_58 (26) = happyShift action_63
action_58 (27) = happyShift action_64
action_58 (28) = happyShift action_65
action_58 (33) = happyShift action_66
action_58 (34) = happyShift action_67
action_58 (35) = happyShift action_68
action_58 (38) = happyShift action_69
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (24) = happyShift action_61
action_59 (25) = happyShift action_62
action_59 (26) = happyShift action_63
action_59 (27) = happyShift action_64
action_59 (30) = happyShift action_91
action_59 (35) = happyShift action_68
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (26) = happyShift action_63
action_60 (27) = happyShift action_64
action_60 (35) = happyShift action_68
action_60 _ = happyReduce_37

action_61 (23) = happyShift action_28
action_61 (25) = happyShift action_29
action_61 (29) = happyShift action_30
action_61 (40) = happyShift action_32
action_61 (41) = happyShift action_33
action_61 (10) = happyGoto action_90
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (23) = happyShift action_28
action_62 (25) = happyShift action_29
action_62 (29) = happyShift action_30
action_62 (40) = happyShift action_32
action_62 (41) = happyShift action_33
action_62 (10) = happyGoto action_89
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (23) = happyShift action_28
action_63 (25) = happyShift action_29
action_63 (29) = happyShift action_30
action_63 (40) = happyShift action_32
action_63 (41) = happyShift action_33
action_63 (10) = happyGoto action_88
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (23) = happyShift action_28
action_64 (25) = happyShift action_29
action_64 (29) = happyShift action_30
action_64 (40) = happyShift action_32
action_64 (41) = happyShift action_33
action_64 (10) = happyGoto action_87
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (28) = happyShift action_86
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (23) = happyShift action_28
action_66 (25) = happyShift action_29
action_66 (28) = happyShift action_85
action_66 (29) = happyShift action_30
action_66 (40) = happyShift action_32
action_66 (41) = happyShift action_33
action_66 (10) = happyGoto action_84
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (23) = happyShift action_28
action_67 (25) = happyShift action_29
action_67 (28) = happyShift action_83
action_67 (29) = happyShift action_30
action_67 (40) = happyShift action_32
action_67 (41) = happyShift action_33
action_67 (10) = happyGoto action_82
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (23) = happyShift action_28
action_68 (25) = happyShift action_29
action_68 (29) = happyShift action_30
action_68 (40) = happyShift action_32
action_68 (41) = happyShift action_33
action_68 (10) = happyGoto action_81
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (28) = happyShift action_80
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (23) = happyShift action_28
action_70 (25) = happyShift action_29
action_70 (29) = happyShift action_30
action_70 (38) = happyShift action_31
action_70 (40) = happyShift action_32
action_70 (41) = happyShift action_33
action_70 (47) = happyShift action_34
action_70 (48) = happyShift action_35
action_70 (9) = happyGoto action_79
action_70 (10) = happyGoto action_58
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (23) = happyShift action_28
action_71 (25) = happyShift action_29
action_71 (29) = happyShift action_30
action_71 (38) = happyShift action_31
action_71 (40) = happyShift action_32
action_71 (41) = happyShift action_33
action_71 (47) = happyShift action_34
action_71 (48) = happyShift action_35
action_71 (9) = happyGoto action_78
action_71 (10) = happyGoto action_58
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (20) = happyShift action_14
action_72 (21) = happyShift action_15
action_72 (39) = happyShift action_16
action_72 (40) = happyShift action_17
action_72 (42) = happyShift action_18
action_72 (45) = happyShift action_19
action_72 (46) = happyShift action_77
action_72 (49) = happyShift action_20
action_72 (50) = happyShift action_21
action_72 (6) = happyGoto action_49
action_72 (7) = happyGoto action_4
action_72 (11) = happyGoto action_5
action_72 (12) = happyGoto action_6
action_72 (13) = happyGoto action_7
action_72 (14) = happyGoto action_8
action_72 (15) = happyGoto action_9
action_72 (16) = happyGoto action_10
action_72 (17) = happyGoto action_11
action_72 (18) = happyGoto action_12
action_72 (19) = happyGoto action_13
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (30) = happyShift action_76
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (30) = happyShift action_75
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (20) = happyShift action_14
action_75 (21) = happyShift action_15
action_75 (39) = happyShift action_16
action_75 (40) = happyShift action_17
action_75 (42) = happyShift action_18
action_75 (45) = happyShift action_19
action_75 (49) = happyShift action_20
action_75 (50) = happyShift action_21
action_75 (5) = happyGoto action_102
action_75 (6) = happyGoto action_3
action_75 (7) = happyGoto action_4
action_75 (11) = happyGoto action_5
action_75 (12) = happyGoto action_6
action_75 (13) = happyGoto action_7
action_75 (14) = happyGoto action_8
action_75 (15) = happyGoto action_9
action_75 (16) = happyGoto action_10
action_75 (17) = happyGoto action_11
action_75 (18) = happyGoto action_12
action_75 (19) = happyGoto action_13
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (21) = happyShift action_101
action_76 _ = happyFail (happyExpListPerState 76)

action_77 _ = happyReduce_47

action_78 (36) = happyShift action_70
action_78 (37) = happyShift action_71
action_78 _ = happyReduce_22

action_79 (36) = happyShift action_70
action_79 (37) = happyShift action_71
action_79 _ = happyReduce_21

action_80 (23) = happyShift action_28
action_80 (25) = happyShift action_29
action_80 (29) = happyShift action_30
action_80 (40) = happyShift action_32
action_80 (41) = happyShift action_33
action_80 (10) = happyGoto action_100
action_80 _ = happyFail (happyExpListPerState 80)

action_81 _ = happyReduce_38

action_82 (24) = happyShift action_61
action_82 (25) = happyShift action_62
action_82 (26) = happyShift action_63
action_82 (27) = happyShift action_64
action_82 (35) = happyShift action_68
action_82 _ = happyReduce_24

action_83 (23) = happyShift action_28
action_83 (25) = happyShift action_29
action_83 (29) = happyShift action_30
action_83 (40) = happyShift action_32
action_83 (41) = happyShift action_33
action_83 (10) = happyGoto action_99
action_83 _ = happyFail (happyExpListPerState 83)

action_84 (24) = happyShift action_61
action_84 (25) = happyShift action_62
action_84 (26) = happyShift action_63
action_84 (27) = happyShift action_64
action_84 (35) = happyShift action_68
action_84 _ = happyReduce_23

action_85 (23) = happyShift action_28
action_85 (25) = happyShift action_29
action_85 (29) = happyShift action_30
action_85 (40) = happyShift action_32
action_85 (41) = happyShift action_33
action_85 (10) = happyGoto action_98
action_85 _ = happyFail (happyExpListPerState 85)

action_86 (23) = happyShift action_28
action_86 (25) = happyShift action_29
action_86 (29) = happyShift action_30
action_86 (40) = happyShift action_32
action_86 (41) = happyShift action_33
action_86 (10) = happyGoto action_97
action_86 _ = happyFail (happyExpListPerState 86)

action_87 (35) = happyShift action_68
action_87 _ = happyReduce_36

action_88 (35) = happyShift action_68
action_88 _ = happyReduce_35

action_89 (26) = happyShift action_63
action_89 (27) = happyShift action_64
action_89 (35) = happyShift action_68
action_89 _ = happyReduce_34

action_90 (25) = happyShift action_62
action_90 (26) = happyShift action_63
action_90 (27) = happyShift action_64
action_90 (35) = happyShift action_68
action_90 _ = happyReduce_33

action_91 _ = happyReduce_32

action_92 _ = happyReduce_39

action_93 (20) = happyShift action_14
action_93 (21) = happyShift action_15
action_93 (39) = happyShift action_16
action_93 (40) = happyShift action_17
action_93 (42) = happyShift action_18
action_93 (45) = happyShift action_19
action_93 (49) = happyShift action_20
action_93 (50) = happyShift action_21
action_93 (5) = happyGoto action_96
action_93 (6) = happyGoto action_3
action_93 (7) = happyGoto action_4
action_93 (11) = happyGoto action_5
action_93 (12) = happyGoto action_6
action_93 (13) = happyGoto action_7
action_93 (14) = happyGoto action_8
action_93 (15) = happyGoto action_9
action_93 (16) = happyGoto action_10
action_93 (17) = happyGoto action_11
action_93 (18) = happyGoto action_12
action_93 (19) = happyGoto action_13
action_93 _ = happyFail (happyExpListPerState 93)

action_94 _ = happyReduce_45

action_95 _ = happyReduce_44

action_96 (20) = happyShift action_14
action_96 (21) = happyShift action_15
action_96 (39) = happyShift action_16
action_96 (40) = happyShift action_17
action_96 (42) = happyShift action_18
action_96 (44) = happyShift action_104
action_96 (45) = happyShift action_19
action_96 (49) = happyShift action_20
action_96 (50) = happyShift action_21
action_96 (6) = happyGoto action_49
action_96 (7) = happyGoto action_4
action_96 (11) = happyGoto action_5
action_96 (12) = happyGoto action_6
action_96 (13) = happyGoto action_7
action_96 (14) = happyGoto action_8
action_96 (15) = happyGoto action_9
action_96 (16) = happyGoto action_10
action_96 (17) = happyGoto action_11
action_96 (18) = happyGoto action_12
action_96 (19) = happyGoto action_13
action_96 _ = happyFail (happyExpListPerState 96)

action_97 (24) = happyShift action_61
action_97 (25) = happyShift action_62
action_97 (26) = happyShift action_63
action_97 (27) = happyShift action_64
action_97 (35) = happyShift action_68
action_97 _ = happyReduce_25

action_98 (24) = happyShift action_61
action_98 (25) = happyShift action_62
action_98 (26) = happyShift action_63
action_98 (27) = happyShift action_64
action_98 (35) = happyShift action_68
action_98 _ = happyReduce_28

action_99 (24) = happyShift action_61
action_99 (25) = happyShift action_62
action_99 (26) = happyShift action_63
action_99 (27) = happyShift action_64
action_99 (35) = happyShift action_68
action_99 _ = happyReduce_27

action_100 (24) = happyShift action_61
action_100 (25) = happyShift action_62
action_100 (26) = happyShift action_63
action_100 (27) = happyShift action_64
action_100 (35) = happyShift action_68
action_100 _ = happyReduce_26

action_101 _ = happyReduce_13

action_102 (20) = happyShift action_14
action_102 (21) = happyShift action_15
action_102 (39) = happyShift action_16
action_102 (40) = happyShift action_17
action_102 (42) = happyShift action_18
action_102 (45) = happyShift action_19
action_102 (49) = happyShift action_20
action_102 (50) = happyShift action_21
action_102 (51) = happyShift action_103
action_102 (6) = happyGoto action_49
action_102 (7) = happyGoto action_4
action_102 (11) = happyGoto action_5
action_102 (12) = happyGoto action_6
action_102 (13) = happyGoto action_7
action_102 (14) = happyGoto action_8
action_102 (15) = happyGoto action_9
action_102 (16) = happyGoto action_10
action_102 (17) = happyGoto action_11
action_102 (18) = happyGoto action_12
action_102 (19) = happyGoto action_13
action_102 _ = happyFail (happyExpListPerState 102)

action_103 _ = happyReduce_48

action_104 _ = happyReduce_46

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

happyReduce_13 = happyReduce 5 6 happyReduction_13
happyReduction_13 (_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TK _ (INT happy_var_3))) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 ("\tPUSH\t" ++ (show happy_var_3) ++ "\n\tSTOP\n"
	) `HappyStk` happyRest

happyReduce_14 = happySpecReduce_1  6 happyReduction_14
happyReduction_14 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_14 _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_2  6 happyReduction_15
happyReduction_15 _
	(HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_15 _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_2  7 happyReduction_16
happyReduction_16 (HappyAbsSyn8  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (";/ print...\n" ++ happy_var_2 ++ "\tOUT\n"
	)
happyReduction_16 _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_1  8 happyReduction_17
happyReduction_17 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1
	)
happyReduction_17 _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_1  8 happyReduction_18
happyReduction_18 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1
	)
happyReduction_18 _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_1  9 happyReduction_19
happyReduction_19 _
	 =  HappyAbsSyn9
		 ("\tPUSH\t" ++ "1" ++ "\n"
	)

happyReduce_20 = happySpecReduce_1  9 happyReduction_20
happyReduction_20 _
	 =  HappyAbsSyn9
		 ("\tPUSH\t" ++ "0" ++ "\n"
	)

happyReduce_21 = happySpecReduce_3  9 happyReduction_21
happyReduction_21 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1 ++ happy_var_3 ++ "\tAND\n"
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  9 happyReduction_22
happyReduction_22 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1 ++ happy_var_3 ++ "\tOR\n"
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happyMonadReduce 3 9 happyReduction_23
happyReduction_23 ((HappyAbsSyn10  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( smaller_than happy_var_1 happy_var_3))
	) (\r -> happyReturn (HappyAbsSyn9 r))

happyReduce_24 = happyMonadReduce 3 9 happyReduction_24
happyReduction_24 ((HappyAbsSyn10  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( smaller_than happy_var_3 happy_var_1))
	) (\r -> happyReturn (HappyAbsSyn9 r))

happyReduce_25 = happyMonadReduce 4 9 happyReduction_25
happyReduction_25 ((HappyAbsSyn10  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( equal happy_var_1 happy_var_4))
	) (\r -> happyReturn (HappyAbsSyn9 r))

happyReduce_26 = happyMonadReduce 4 9 happyReduction_26
happyReduction_26 ((HappyAbsSyn10  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( not_equal happy_var_1 happy_var_4))
	) (\r -> happyReturn (HappyAbsSyn9 r))

happyReduce_27 = happyMonadReduce 4 9 happyReduction_27
happyReduction_27 ((HappyAbsSyn10  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( gre_or_eq happy_var_1 happy_var_4))
	) (\r -> happyReturn (HappyAbsSyn9 r))

happyReduce_28 = happyMonadReduce 4 9 happyReduction_28
happyReduction_28 ((HappyAbsSyn10  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( sma_or_eq happy_var_1 happy_var_4))
	) (\r -> happyReturn (HappyAbsSyn9 r))

happyReduce_29 = happyMonadReduce 2 9 happyReduction_29
happyReduction_29 ((HappyAbsSyn9  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest) tk
	 = happyThen ((( PascalParser.not happy_var_2))
	) (\r -> happyReturn (HappyAbsSyn9 r))

happyReduce_30 = happySpecReduce_1  10 happyReduction_30
happyReduction_30 (HappyTerminal (TK _ (INT happy_var_1)))
	 =  HappyAbsSyn10
		 ("\tPUSH\t" ++ (show happy_var_1) ++ "\n"
	)
happyReduction_30 _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_1  10 happyReduction_31
happyReduction_31 (HappyTerminal (TK _ (VAR happy_var_1)))
	 =  HappyAbsSyn10
		 ("\tPUSH\t" ++ happy_var_1 ++ "\n" ++ "\tLOAD\n"
	)
happyReduction_31 _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  10 happyReduction_32
happyReduction_32 _
	(HappyAbsSyn10  happy_var_2)
	_
	 =  HappyAbsSyn10
		 (happy_var_2
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  10 happyReduction_33
happyReduction_33 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_1 ++ happy_var_3 ++ "\tADD\n"
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  10 happyReduction_34
happyReduction_34 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_1 ++ happy_var_3 ++ "\tSUB\n"
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_3  10 happyReduction_35
happyReduction_35 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_1 ++ happy_var_3 ++ "\tMUL\n"
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_3  10 happyReduction_36
happyReduction_36 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_1 ++ happy_var_3 ++ "\tDIV\n"
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_2  10 happyReduction_37
happyReduction_37 (HappyAbsSyn10  happy_var_2)
	_
	 =  HappyAbsSyn10
		 ("\tPUSH\t0\n\tPUSH\t1\n\tSUB\n" ++ happy_var_2 ++ "\tMUL\n"
	)
happyReduction_37 _ _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_3  10 happyReduction_38
happyReduction_38 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_1 ++ happy_var_3 ++ happy_var_1 ++ happy_var_3 ++ "\tDIV\n" ++ "\tMUL\n" ++ "\tSUB\n"
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_3  10 happyReduction_39
happyReduction_39 _
	_
	_
	 =  HappyAbsSyn10
		 ("\tIN\n"
	)

happyReduce_40 = happySpecReduce_3  11 happyReduction_40
happyReduction_40 (HappyTerminal (TK _ (VAR happy_var_3)))
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn11
		 (happy_var_1 ++ happy_var_3 ++ "\tDS\t" ++ "1\n"
	)
happyReduction_40 _ _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_3  11 happyReduction_41
happyReduction_41 (HappyTerminal (TK _ (VAR happy_var_3)))
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (happy_var_1 ++ happy_var_3 ++ "\tDS\t" ++ "1\n"
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_2  12 happyReduction_42
happyReduction_42 (HappyTerminal (TK _ (VAR happy_var_2)))
	_
	 =  HappyAbsSyn12
		 (happy_var_2 ++ "\tDS\t" ++ "1\n"
	)
happyReduction_42 _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_3  13 happyReduction_43
happyReduction_43 (HappyAbsSyn8  happy_var_3)
	_
	(HappyTerminal (TK _ (VAR happy_var_1)))
	 =  HappyAbsSyn13
		 ("\tPUSH\t" ++ happy_var_1 ++ "\n" ++ happy_var_3 ++ "\tSTORE\n"
	)
happyReduction_43 _ _ _  = notHappyAtAll 

happyReduce_44 = happyReduce 4 14 happyReduction_44
happyReduction_44 ((HappyAbsSyn8  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TK _ (VAR happy_var_2))) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (happy_var_2 ++ "\tDS\t" ++ "1\n" ++ "\tPUSH\t" ++ happy_var_2 ++ "\n" ++ happy_var_4 ++ "\tSTORE\n"
	) `HappyStk` happyRest

happyReduce_45 = happyMonadReduce 4 15 happyReduction_45
happyReduction_45 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	(HappyAbsSyn8  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest) tk
	 = happyThen ((( if_then happy_var_2 happy_var_3))
	) (\r -> happyReturn (HappyAbsSyn15 r))

happyReduce_46 = happyMonadReduce 6 16 happyReduction_46
happyReduction_46 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	(HappyAbsSyn8  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest) tk
	 = happyThen ((( if_then_else happy_var_2 happy_var_3 happy_var_5))
	) (\r -> happyReturn (HappyAbsSyn16 r))

happyReduce_47 = happyMonadReduce 4 17 happyReduction_47
happyReduction_47 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	(HappyAbsSyn8  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest) tk
	 = happyThen ((( while_do happy_var_2 happy_var_3))
	) (\r -> happyReturn (HappyAbsSyn17 r))

happyReduce_48 = happyMonadReduce 6 18 happyReduction_48
happyReduction_48 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TK _ (VAR happy_var_2))) `HappyStk`
	_ `HappyStk`
	happyRest) tk
	 = happyThen ((( declare_fn happy_var_2 happy_var_5))
	) (\r -> happyReturn (HappyAbsSyn18 r))

happyReduce_49 = happyMonadReduce 3 19 happyReduction_49
happyReduction_49 (_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TK _ (VAR happy_var_1))) `HappyStk`
	happyRest) tk
	 = happyThen ((( call_fn happy_var_1))
	) (\r -> happyReturn (HappyAbsSyn19 r))

happyNewToken action sts stk [] =
	action 52 52 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TK _ PRINT -> cont 20;
	TK _ SEP -> cont 21;
	TK _ COM -> cont 22;
	TK _ (INT happy_dollar_dollar) -> cont 23;
	TK _ PLUS -> cont 24;
	TK _ SUB -> cont 25;
	TK _ MULT -> cont 26;
	TK _ DIV -> cont 27;
	TK _ EQU -> cont 28;
	TK _ LPAR -> cont 29;
	TK _ RPAR -> cont 30;
	TK _ LBRK -> cont 31;
	TK _ RBRK -> cont 32;
	TK _ SM -> cont 33;
	TK _ GR -> cont 34;
	TK _ MOD -> cont 35;
	TK _ AND -> cont 36;
	TK _ OR -> cont 37;
	TK _ NOT -> cont 38;
	TK _ LET -> cont 39;
	TK _ (VAR happy_dollar_dollar) -> cont 40;
	TK _ INP -> cont 41;
	TK _ IF -> cont 42;
	TK _ ELSE -> cont 43;
	TK _ EIF -> cont 44;
	TK _ WH -> cont 45;
	TK _ EWH -> cont 46;
	TK _ TRUE -> cont 47;
	TK _ FALSE -> cont 48;
	TK _ EXIT -> cont 49;
	TK _ FN -> cont 50;
	TK _ EFN -> cont 51;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 52 tk tks = happyError' (tks, explist)
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

smaller_than :: String -> String -> ParseResult String
smaller_than a b = do
  s <- get
  let smaller_name =  "smaller" ++ show (counter s)
  let endsmaller_name = "endsmaller" ++ show (counter s)
  let s' = incrCounter s
  put s'
  return (
    b ++ a ++ "\tSUB\n" ++
    "\tBGZ\t" ++ smaller_name ++ "\n" ++
    "\tPUSH\t0\n\tPUSH\t" ++ endsmaller_name ++ "\n\tGOTO\n" ++
    smaller_name ++ "\tEQU\t*\n" ++
    "\tPUSH\t1\n" ++
    endsmaller_name ++ "\tEQU\t*\n")

gre_or_eq :: String -> String -> ParseResult String
gre_or_eq a b = do
  s <- smaller_than a b
  answer <- PascalParser.not s
  return (answer)

sma_or_eq :: String -> String -> ParseResult String
sma_or_eq a b = do
  s <- smaller_than b a
  answer <- PascalParser.not s
  return (answer)

equal :: String -> String -> ParseResult String
equal a b = do
  e <- if_then_else (a ++ b ++ "\tSUB\n") "\tPUSH\t0\n" "\tPUSH\t1\n"
  return e

not_equal :: String -> String -> ParseResult String
not_equal a b = do
  e <- equal a b
  ne <- PascalParser.not e
  return ne

not :: String -> ParseResult String
not bool = do
  s <- if_then_else bool "\tPUSH\t0\n" "\tPUSH\t1\n"
  return s

declare_fn :: String -> String -> ParseResult String
declare_fn fn_label linst = do
  s <- get
  let skip_function = "skipfn" ++ show (counter s)
  let s' = incrCounter s
  put s'
  return(
    "\tPUSH\t" ++ skip_function ++ "\n\tGOTO\n" ++
    fn_label ++ "\tEQU\t*\n" ++
    linst ++ "\tGOTO\n" ++
    skip_function ++ "\tEQU\t*\n")

call_fn :: String -> ParseResult String
call_fn fn_label = do
  s <- get
  let return_label = "returnFunction" ++ show (counter s)
  let s' = incrCounter s
  put s'
  return(
    "\tPUSH\t" ++ return_label ++ "\n" ++
    "\tPUSH\t" ++ fn_label ++ "\n\tGOTO\n" ++
    return_label ++ "\tEQU\t*\n")

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
