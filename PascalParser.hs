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

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20
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
	| HappyAbsSyn20 t20

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,341) ([0,48,9600,6,3072,24576,393,0,3,25176,0,0,0,0,8192,0,0,0,24,0,0,1536,0,0,32768,0,0,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,512,0,0,0,138,1549,0,0,0,0,0,16384,0,0,768,0,0,35328,3328,6,32768,16418,387,0,2048,0,0,0,4096,0,0,0,0,0,8192,0,0,8192,0,0,0,3,25176,0,0,192,0,0,19999,0,0,0,0,0,0,0,0,0,138,12,0,8832,768,0,40960,53256,96,0,512,0,0,32768,0,0,0,0,0,0,0,0,0,768,22528,98,0,138,1549,0,16384,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,16384,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10240,13314,24,0,0,0,0,0,0,0,3072,24576,399,0,1024,0,0,0,0,0,0,19999,0,0,0,0,0,61440,132,0,0,8240,0,0,8832,768,0,40960,49160,0,0,552,48,0,35328,3072,0,0,16,0,0,3232,192,0,10240,12291,0,0,138,12,0,4096,0,0,40960,53256,96,0,552,6196,0,192,38400,25,0,64,0,0,4096,0,0,768,22528,98,32768,0,0,0,0,0,0,0,0,0,0,0,0,0,35328,3072,0,0,0,0,0,960,2,0,10240,12290,0,0,8252,0,0,8832,768,0,40960,49160,0,0,32768,0,0,0,32,0,0,2060,0,0,896,2,0,0,0,0,0,0,0,0,48,9600,6,0,0,0,0,0,0,0,192,54784,24,0,2063,0,0,960,2,0,61440,128,0,0,8252,0,0,0,0,0,3072,24576,1929,0,0,0,0,35328,3328,6,0,0,0,0,0,0,2,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parse","Program","Linst","Inst","Print","Expr","BoolExpr","ArExpr","LInit","Init","Def","InitDef","If","IfElse","While","DecFn","DecFnRet","CallFn","print","';'","','","integer","'+'","'-'","'*'","'/'","'='","'('","')'","'['","']'","'<'","'>'","mod","and","or","not","let","var","input","if","else","endif","while","endwhile","true","false","exit","fn","endfn","return","%eof"]
        bit_start = st Prelude.* 54
        bit_end = (st Prelude.+ 1) Prelude.* 54
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..53]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (21) = happyShift action_15
action_0 (22) = happyShift action_16
action_0 (40) = happyShift action_17
action_0 (41) = happyShift action_18
action_0 (43) = happyShift action_19
action_0 (46) = happyShift action_20
action_0 (50) = happyShift action_21
action_0 (51) = happyShift action_22
action_0 (4) = happyGoto action_23
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
action_0 (20) = happyGoto action_14
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (21) = happyShift action_15
action_1 (22) = happyShift action_16
action_1 (40) = happyShift action_17
action_1 (41) = happyShift action_18
action_1 (43) = happyShift action_19
action_1 (46) = happyShift action_20
action_1 (50) = happyShift action_21
action_1 (51) = happyShift action_22
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
action_1 (20) = happyGoto action_14
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (21) = happyShift action_15
action_2 (22) = happyShift action_16
action_2 (40) = happyShift action_17
action_2 (41) = happyShift action_18
action_2 (43) = happyShift action_19
action_2 (46) = happyShift action_20
action_2 (50) = happyShift action_21
action_2 (51) = happyShift action_22
action_2 (6) = happyGoto action_51
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
action_2 (20) = happyGoto action_14
action_2 _ = happyReduce_1

action_3 _ = happyReduce_2

action_4 (22) = happyShift action_50
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (22) = happyShift action_48
action_5 (23) = happyShift action_49
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (22) = happyShift action_46
action_6 (23) = happyShift action_47
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (22) = happyShift action_45
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (22) = happyShift action_44
action_8 _ = happyFail (happyExpListPerState 8)

action_9 _ = happyReduce_10

action_10 _ = happyReduce_11

action_11 _ = happyReduce_12

action_12 _ = happyReduce_14

action_13 _ = happyReduce_15

action_14 (22) = happyShift action_43
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (24) = happyShift action_30
action_15 (26) = happyShift action_31
action_15 (30) = happyShift action_32
action_15 (39) = happyShift action_33
action_15 (41) = happyShift action_34
action_15 (42) = happyShift action_35
action_15 (48) = happyShift action_36
action_15 (49) = happyShift action_37
action_15 (8) = happyGoto action_42
action_15 (9) = happyGoto action_27
action_15 (10) = happyGoto action_28
action_15 (20) = happyGoto action_29
action_15 _ = happyFail (happyExpListPerState 15)

action_16 _ = happyReduce_5

action_17 (41) = happyShift action_41
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (29) = happyShift action_39
action_18 (30) = happyShift action_40
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (24) = happyShift action_30
action_19 (26) = happyShift action_31
action_19 (30) = happyShift action_32
action_19 (39) = happyShift action_33
action_19 (41) = happyShift action_34
action_19 (42) = happyShift action_35
action_19 (48) = happyShift action_36
action_19 (49) = happyShift action_37
action_19 (8) = happyGoto action_38
action_19 (9) = happyGoto action_27
action_19 (10) = happyGoto action_28
action_19 (20) = happyGoto action_29
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (24) = happyShift action_30
action_20 (26) = happyShift action_31
action_20 (30) = happyShift action_32
action_20 (39) = happyShift action_33
action_20 (41) = happyShift action_34
action_20 (42) = happyShift action_35
action_20 (48) = happyShift action_36
action_20 (49) = happyShift action_37
action_20 (8) = happyGoto action_26
action_20 (9) = happyGoto action_27
action_20 (10) = happyGoto action_28
action_20 (20) = happyGoto action_29
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (30) = happyShift action_25
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (41) = happyShift action_24
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (54) = happyAccept
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (30) = happyShift action_77
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (24) = happyShift action_76
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (21) = happyShift action_15
action_26 (22) = happyShift action_16
action_26 (40) = happyShift action_17
action_26 (41) = happyShift action_18
action_26 (43) = happyShift action_19
action_26 (46) = happyShift action_20
action_26 (50) = happyShift action_21
action_26 (51) = happyShift action_22
action_26 (5) = happyGoto action_75
action_26 (6) = happyGoto action_3
action_26 (7) = happyGoto action_4
action_26 (11) = happyGoto action_5
action_26 (12) = happyGoto action_6
action_26 (13) = happyGoto action_7
action_26 (14) = happyGoto action_8
action_26 (15) = happyGoto action_9
action_26 (16) = happyGoto action_10
action_26 (17) = happyGoto action_11
action_26 (18) = happyGoto action_12
action_26 (19) = happyGoto action_13
action_26 (20) = happyGoto action_14
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (37) = happyShift action_73
action_27 (38) = happyShift action_74
action_27 _ = happyReduce_19

action_28 (25) = happyShift action_64
action_28 (26) = happyShift action_65
action_28 (27) = happyShift action_66
action_28 (28) = happyShift action_67
action_28 (29) = happyShift action_68
action_28 (34) = happyShift action_69
action_28 (35) = happyShift action_70
action_28 (36) = happyShift action_71
action_28 (39) = happyShift action_72
action_28 _ = happyReduce_18

action_29 _ = happyReduce_20

action_30 _ = happyReduce_32

action_31 (24) = happyShift action_30
action_31 (26) = happyShift action_31
action_31 (30) = happyShift action_32
action_31 (41) = happyShift action_61
action_31 (42) = happyShift action_35
action_31 (10) = happyGoto action_63
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (24) = happyShift action_30
action_32 (26) = happyShift action_31
action_32 (30) = happyShift action_32
action_32 (41) = happyShift action_61
action_32 (42) = happyShift action_35
action_32 (10) = happyGoto action_62
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (24) = happyShift action_30
action_33 (26) = happyShift action_31
action_33 (30) = happyShift action_32
action_33 (39) = happyShift action_33
action_33 (41) = happyShift action_61
action_33 (42) = happyShift action_35
action_33 (48) = happyShift action_36
action_33 (49) = happyShift action_37
action_33 (9) = happyGoto action_59
action_33 (10) = happyGoto action_60
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (30) = happyShift action_40
action_34 _ = happyReduce_33

action_35 (30) = happyShift action_58
action_35 _ = happyFail (happyExpListPerState 35)

action_36 _ = happyReduce_21

action_37 _ = happyReduce_22

action_38 (21) = happyShift action_15
action_38 (22) = happyShift action_16
action_38 (40) = happyShift action_17
action_38 (41) = happyShift action_18
action_38 (43) = happyShift action_19
action_38 (46) = happyShift action_20
action_38 (50) = happyShift action_21
action_38 (51) = happyShift action_22
action_38 (5) = happyGoto action_57
action_38 (6) = happyGoto action_3
action_38 (7) = happyGoto action_4
action_38 (11) = happyGoto action_5
action_38 (12) = happyGoto action_6
action_38 (13) = happyGoto action_7
action_38 (14) = happyGoto action_8
action_38 (15) = happyGoto action_9
action_38 (16) = happyGoto action_10
action_38 (17) = happyGoto action_11
action_38 (18) = happyGoto action_12
action_38 (19) = happyGoto action_13
action_38 (20) = happyGoto action_14
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (24) = happyShift action_30
action_39 (26) = happyShift action_31
action_39 (30) = happyShift action_32
action_39 (39) = happyShift action_33
action_39 (41) = happyShift action_34
action_39 (42) = happyShift action_35
action_39 (48) = happyShift action_36
action_39 (49) = happyShift action_37
action_39 (8) = happyGoto action_56
action_39 (9) = happyGoto action_27
action_39 (10) = happyGoto action_28
action_39 (20) = happyGoto action_29
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (31) = happyShift action_55
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (29) = happyShift action_54
action_41 _ = happyReduce_44

action_42 _ = happyReduce_17

action_43 _ = happyReduce_16

action_44 _ = happyReduce_9

action_45 _ = happyReduce_8

action_46 _ = happyReduce_6

action_47 (41) = happyShift action_53
action_47 _ = happyFail (happyExpListPerState 47)

action_48 _ = happyReduce_7

action_49 (41) = happyShift action_52
action_49 _ = happyFail (happyExpListPerState 49)

action_50 _ = happyReduce_4

action_51 _ = happyReduce_3

action_52 _ = happyReduce_43

action_53 _ = happyReduce_42

action_54 (24) = happyShift action_30
action_54 (26) = happyShift action_31
action_54 (30) = happyShift action_32
action_54 (39) = happyShift action_33
action_54 (41) = happyShift action_34
action_54 (42) = happyShift action_35
action_54 (48) = happyShift action_36
action_54 (49) = happyShift action_37
action_54 (8) = happyGoto action_98
action_54 (9) = happyGoto action_27
action_54 (10) = happyGoto action_28
action_54 (20) = happyGoto action_29
action_54 _ = happyFail (happyExpListPerState 54)

action_55 _ = happyReduce_52

action_56 _ = happyReduce_45

action_57 (21) = happyShift action_15
action_57 (22) = happyShift action_16
action_57 (40) = happyShift action_17
action_57 (41) = happyShift action_18
action_57 (43) = happyShift action_19
action_57 (44) = happyShift action_96
action_57 (45) = happyShift action_97
action_57 (46) = happyShift action_20
action_57 (50) = happyShift action_21
action_57 (51) = happyShift action_22
action_57 (6) = happyGoto action_51
action_57 (7) = happyGoto action_4
action_57 (11) = happyGoto action_5
action_57 (12) = happyGoto action_6
action_57 (13) = happyGoto action_7
action_57 (14) = happyGoto action_8
action_57 (15) = happyGoto action_9
action_57 (16) = happyGoto action_10
action_57 (17) = happyGoto action_11
action_57 (18) = happyGoto action_12
action_57 (19) = happyGoto action_13
action_57 (20) = happyGoto action_14
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (31) = happyShift action_95
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (37) = happyShift action_73
action_59 (38) = happyShift action_74
action_59 _ = happyReduce_31

action_60 (25) = happyShift action_64
action_60 (26) = happyShift action_65
action_60 (27) = happyShift action_66
action_60 (28) = happyShift action_67
action_60 (29) = happyShift action_68
action_60 (34) = happyShift action_69
action_60 (35) = happyShift action_70
action_60 (36) = happyShift action_71
action_60 (39) = happyShift action_72
action_60 _ = happyFail (happyExpListPerState 60)

action_61 _ = happyReduce_33

action_62 (25) = happyShift action_64
action_62 (26) = happyShift action_65
action_62 (27) = happyShift action_66
action_62 (28) = happyShift action_67
action_62 (31) = happyShift action_94
action_62 (36) = happyShift action_71
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (27) = happyShift action_66
action_63 (28) = happyShift action_67
action_63 (36) = happyShift action_71
action_63 _ = happyReduce_39

action_64 (24) = happyShift action_30
action_64 (26) = happyShift action_31
action_64 (30) = happyShift action_32
action_64 (41) = happyShift action_61
action_64 (42) = happyShift action_35
action_64 (10) = happyGoto action_93
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (24) = happyShift action_30
action_65 (26) = happyShift action_31
action_65 (30) = happyShift action_32
action_65 (41) = happyShift action_61
action_65 (42) = happyShift action_35
action_65 (10) = happyGoto action_92
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (24) = happyShift action_30
action_66 (26) = happyShift action_31
action_66 (30) = happyShift action_32
action_66 (41) = happyShift action_61
action_66 (42) = happyShift action_35
action_66 (10) = happyGoto action_91
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (24) = happyShift action_30
action_67 (26) = happyShift action_31
action_67 (30) = happyShift action_32
action_67 (41) = happyShift action_61
action_67 (42) = happyShift action_35
action_67 (10) = happyGoto action_90
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (29) = happyShift action_89
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (24) = happyShift action_30
action_69 (26) = happyShift action_31
action_69 (29) = happyShift action_88
action_69 (30) = happyShift action_32
action_69 (41) = happyShift action_61
action_69 (42) = happyShift action_35
action_69 (10) = happyGoto action_87
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (24) = happyShift action_30
action_70 (26) = happyShift action_31
action_70 (29) = happyShift action_86
action_70 (30) = happyShift action_32
action_70 (41) = happyShift action_61
action_70 (42) = happyShift action_35
action_70 (10) = happyGoto action_85
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (24) = happyShift action_30
action_71 (26) = happyShift action_31
action_71 (30) = happyShift action_32
action_71 (41) = happyShift action_61
action_71 (42) = happyShift action_35
action_71 (10) = happyGoto action_84
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (29) = happyShift action_83
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (24) = happyShift action_30
action_73 (26) = happyShift action_31
action_73 (30) = happyShift action_32
action_73 (39) = happyShift action_33
action_73 (41) = happyShift action_61
action_73 (42) = happyShift action_35
action_73 (48) = happyShift action_36
action_73 (49) = happyShift action_37
action_73 (9) = happyGoto action_82
action_73 (10) = happyGoto action_60
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (24) = happyShift action_30
action_74 (26) = happyShift action_31
action_74 (30) = happyShift action_32
action_74 (39) = happyShift action_33
action_74 (41) = happyShift action_61
action_74 (42) = happyShift action_35
action_74 (48) = happyShift action_36
action_74 (49) = happyShift action_37
action_74 (9) = happyGoto action_81
action_74 (10) = happyGoto action_60
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (21) = happyShift action_15
action_75 (22) = happyShift action_16
action_75 (40) = happyShift action_17
action_75 (41) = happyShift action_18
action_75 (43) = happyShift action_19
action_75 (46) = happyShift action_20
action_75 (47) = happyShift action_80
action_75 (50) = happyShift action_21
action_75 (51) = happyShift action_22
action_75 (6) = happyGoto action_51
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
action_75 (20) = happyGoto action_14
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (31) = happyShift action_79
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (31) = happyShift action_78
action_77 _ = happyFail (happyExpListPerState 77)

action_78 (21) = happyShift action_15
action_78 (22) = happyShift action_16
action_78 (40) = happyShift action_17
action_78 (41) = happyShift action_18
action_78 (43) = happyShift action_19
action_78 (46) = happyShift action_20
action_78 (50) = happyShift action_21
action_78 (51) = happyShift action_22
action_78 (5) = happyGoto action_105
action_78 (6) = happyGoto action_3
action_78 (7) = happyGoto action_4
action_78 (11) = happyGoto action_5
action_78 (12) = happyGoto action_6
action_78 (13) = happyGoto action_7
action_78 (14) = happyGoto action_8
action_78 (15) = happyGoto action_9
action_78 (16) = happyGoto action_10
action_78 (17) = happyGoto action_11
action_78 (18) = happyGoto action_12
action_78 (19) = happyGoto action_13
action_78 (20) = happyGoto action_14
action_78 _ = happyFail (happyExpListPerState 78)

action_79 (22) = happyShift action_104
action_79 _ = happyFail (happyExpListPerState 79)

action_80 _ = happyReduce_49

action_81 (37) = happyShift action_73
action_81 (38) = happyShift action_74
action_81 _ = happyReduce_24

action_82 (37) = happyShift action_73
action_82 (38) = happyShift action_74
action_82 _ = happyReduce_23

action_83 (24) = happyShift action_30
action_83 (26) = happyShift action_31
action_83 (30) = happyShift action_32
action_83 (41) = happyShift action_61
action_83 (42) = happyShift action_35
action_83 (10) = happyGoto action_103
action_83 _ = happyFail (happyExpListPerState 83)

action_84 _ = happyReduce_40

action_85 (25) = happyShift action_64
action_85 (26) = happyShift action_65
action_85 (27) = happyShift action_66
action_85 (28) = happyShift action_67
action_85 (36) = happyShift action_71
action_85 _ = happyReduce_26

action_86 (24) = happyShift action_30
action_86 (26) = happyShift action_31
action_86 (30) = happyShift action_32
action_86 (41) = happyShift action_61
action_86 (42) = happyShift action_35
action_86 (10) = happyGoto action_102
action_86 _ = happyFail (happyExpListPerState 86)

action_87 (25) = happyShift action_64
action_87 (26) = happyShift action_65
action_87 (27) = happyShift action_66
action_87 (28) = happyShift action_67
action_87 (36) = happyShift action_71
action_87 _ = happyReduce_25

action_88 (24) = happyShift action_30
action_88 (26) = happyShift action_31
action_88 (30) = happyShift action_32
action_88 (41) = happyShift action_61
action_88 (42) = happyShift action_35
action_88 (10) = happyGoto action_101
action_88 _ = happyFail (happyExpListPerState 88)

action_89 (24) = happyShift action_30
action_89 (26) = happyShift action_31
action_89 (30) = happyShift action_32
action_89 (41) = happyShift action_61
action_89 (42) = happyShift action_35
action_89 (10) = happyGoto action_100
action_89 _ = happyFail (happyExpListPerState 89)

action_90 (36) = happyShift action_71
action_90 _ = happyReduce_38

action_91 (36) = happyShift action_71
action_91 _ = happyReduce_37

action_92 (27) = happyShift action_66
action_92 (28) = happyShift action_67
action_92 (36) = happyShift action_71
action_92 _ = happyReduce_36

action_93 (26) = happyShift action_65
action_93 (27) = happyShift action_66
action_93 (28) = happyShift action_67
action_93 (36) = happyShift action_71
action_93 _ = happyReduce_35

action_94 _ = happyReduce_34

action_95 _ = happyReduce_41

action_96 (21) = happyShift action_15
action_96 (22) = happyShift action_16
action_96 (40) = happyShift action_17
action_96 (41) = happyShift action_18
action_96 (43) = happyShift action_19
action_96 (46) = happyShift action_20
action_96 (50) = happyShift action_21
action_96 (51) = happyShift action_22
action_96 (5) = happyGoto action_99
action_96 (6) = happyGoto action_3
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
action_96 (20) = happyGoto action_14
action_96 _ = happyFail (happyExpListPerState 96)

action_97 _ = happyReduce_47

action_98 _ = happyReduce_46

action_99 (21) = happyShift action_15
action_99 (22) = happyShift action_16
action_99 (40) = happyShift action_17
action_99 (41) = happyShift action_18
action_99 (43) = happyShift action_19
action_99 (45) = happyShift action_108
action_99 (46) = happyShift action_20
action_99 (50) = happyShift action_21
action_99 (51) = happyShift action_22
action_99 (6) = happyGoto action_51
action_99 (7) = happyGoto action_4
action_99 (11) = happyGoto action_5
action_99 (12) = happyGoto action_6
action_99 (13) = happyGoto action_7
action_99 (14) = happyGoto action_8
action_99 (15) = happyGoto action_9
action_99 (16) = happyGoto action_10
action_99 (17) = happyGoto action_11
action_99 (18) = happyGoto action_12
action_99 (19) = happyGoto action_13
action_99 (20) = happyGoto action_14
action_99 _ = happyFail (happyExpListPerState 99)

action_100 (25) = happyShift action_64
action_100 (26) = happyShift action_65
action_100 (27) = happyShift action_66
action_100 (28) = happyShift action_67
action_100 (36) = happyShift action_71
action_100 _ = happyReduce_27

action_101 (25) = happyShift action_64
action_101 (26) = happyShift action_65
action_101 (27) = happyShift action_66
action_101 (28) = happyShift action_67
action_101 (36) = happyShift action_71
action_101 _ = happyReduce_30

action_102 (25) = happyShift action_64
action_102 (26) = happyShift action_65
action_102 (27) = happyShift action_66
action_102 (28) = happyShift action_67
action_102 (36) = happyShift action_71
action_102 _ = happyReduce_29

action_103 (25) = happyShift action_64
action_103 (26) = happyShift action_65
action_103 (27) = happyShift action_66
action_103 (28) = happyShift action_67
action_103 (36) = happyShift action_71
action_103 _ = happyReduce_28

action_104 _ = happyReduce_13

action_105 (21) = happyShift action_15
action_105 (22) = happyShift action_16
action_105 (40) = happyShift action_17
action_105 (41) = happyShift action_18
action_105 (43) = happyShift action_19
action_105 (46) = happyShift action_20
action_105 (50) = happyShift action_21
action_105 (51) = happyShift action_22
action_105 (52) = happyShift action_106
action_105 (53) = happyShift action_107
action_105 (6) = happyGoto action_51
action_105 (7) = happyGoto action_4
action_105 (11) = happyGoto action_5
action_105 (12) = happyGoto action_6
action_105 (13) = happyGoto action_7
action_105 (14) = happyGoto action_8
action_105 (15) = happyGoto action_9
action_105 (16) = happyGoto action_10
action_105 (17) = happyGoto action_11
action_105 (18) = happyGoto action_12
action_105 (19) = happyGoto action_13
action_105 (20) = happyGoto action_14
action_105 _ = happyFail (happyExpListPerState 105)

action_106 _ = happyReduce_50

action_107 (24) = happyShift action_30
action_107 (26) = happyShift action_31
action_107 (30) = happyShift action_32
action_107 (39) = happyShift action_33
action_107 (41) = happyShift action_34
action_107 (42) = happyShift action_35
action_107 (48) = happyShift action_36
action_107 (49) = happyShift action_37
action_107 (8) = happyGoto action_109
action_107 (9) = happyGoto action_27
action_107 (10) = happyGoto action_28
action_107 (20) = happyGoto action_29
action_107 _ = happyFail (happyExpListPerState 107)

action_108 _ = happyReduce_48

action_109 (52) = happyShift action_110
action_109 _ = happyFail (happyExpListPerState 109)

action_110 _ = happyReduce_51

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

happyReduce_15 = happySpecReduce_1  6 happyReduction_15
happyReduction_15 (HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_15 _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_2  6 happyReduction_16
happyReduction_16 _
	(HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_16 _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_2  7 happyReduction_17
happyReduction_17 (HappyAbsSyn8  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (";/ print...\n" ++ happy_var_2 ++ "\tOUT\n"
	)
happyReduction_17 _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_1  8 happyReduction_18
happyReduction_18 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1
	)
happyReduction_18 _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_1  8 happyReduction_19
happyReduction_19 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1
	)
happyReduction_19 _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_1  8 happyReduction_20
happyReduction_20 (HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  9 happyReduction_21
happyReduction_21 _
	 =  HappyAbsSyn9
		 ("\tPUSH\t" ++ "1" ++ "\n"
	)

happyReduce_22 = happySpecReduce_1  9 happyReduction_22
happyReduction_22 _
	 =  HappyAbsSyn9
		 ("\tPUSH\t" ++ "0" ++ "\n"
	)

happyReduce_23 = happySpecReduce_3  9 happyReduction_23
happyReduction_23 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1 ++ happy_var_3 ++ "\tAND\n"
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  9 happyReduction_24
happyReduction_24 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1 ++ happy_var_3 ++ "\tOR\n"
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happyMonadReduce 3 9 happyReduction_25
happyReduction_25 ((HappyAbsSyn10  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( smaller_than happy_var_1 happy_var_3))
	) (\r -> happyReturn (HappyAbsSyn9 r))

happyReduce_26 = happyMonadReduce 3 9 happyReduction_26
happyReduction_26 ((HappyAbsSyn10  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( smaller_than happy_var_3 happy_var_1))
	) (\r -> happyReturn (HappyAbsSyn9 r))

happyReduce_27 = happyMonadReduce 4 9 happyReduction_27
happyReduction_27 ((HappyAbsSyn10  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( equal happy_var_1 happy_var_4))
	) (\r -> happyReturn (HappyAbsSyn9 r))

happyReduce_28 = happyMonadReduce 4 9 happyReduction_28
happyReduction_28 ((HappyAbsSyn10  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( not_equal happy_var_1 happy_var_4))
	) (\r -> happyReturn (HappyAbsSyn9 r))

happyReduce_29 = happyMonadReduce 4 9 happyReduction_29
happyReduction_29 ((HappyAbsSyn10  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( gre_or_eq happy_var_1 happy_var_4))
	) (\r -> happyReturn (HappyAbsSyn9 r))

happyReduce_30 = happyMonadReduce 4 9 happyReduction_30
happyReduction_30 ((HappyAbsSyn10  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_1) `HappyStk`
	happyRest) tk
	 = happyThen ((( sma_or_eq happy_var_1 happy_var_4))
	) (\r -> happyReturn (HappyAbsSyn9 r))

happyReduce_31 = happyMonadReduce 2 9 happyReduction_31
happyReduction_31 ((HappyAbsSyn9  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest) tk
	 = happyThen ((( PascalParser.not happy_var_2))
	) (\r -> happyReturn (HappyAbsSyn9 r))

happyReduce_32 = happySpecReduce_1  10 happyReduction_32
happyReduction_32 (HappyTerminal (TK _ (INT happy_var_1)))
	 =  HappyAbsSyn10
		 ("\tPUSH\t" ++ (show happy_var_1) ++ "\n"
	)
happyReduction_32 _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_1  10 happyReduction_33
happyReduction_33 (HappyTerminal (TK _ (VAR happy_var_1)))
	 =  HappyAbsSyn10
		 ("\tPUSH\t" ++ happy_var_1 ++ "\n" ++ "\tLOAD\n"
	)
happyReduction_33 _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  10 happyReduction_34
happyReduction_34 _
	(HappyAbsSyn10  happy_var_2)
	_
	 =  HappyAbsSyn10
		 (happy_var_2
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_3  10 happyReduction_35
happyReduction_35 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_1 ++ happy_var_3 ++ "\tADD\n"
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_3  10 happyReduction_36
happyReduction_36 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_1 ++ happy_var_3 ++ "\tSUB\n"
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_3  10 happyReduction_37
happyReduction_37 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_1 ++ happy_var_3 ++ "\tMUL\n"
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_3  10 happyReduction_38
happyReduction_38 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_1 ++ happy_var_3 ++ "\tDIV\n"
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_2  10 happyReduction_39
happyReduction_39 (HappyAbsSyn10  happy_var_2)
	_
	 =  HappyAbsSyn10
		 ("\tPUSH\t0\n\tPUSH\t1\n\tSUB\n" ++ happy_var_2 ++ "\tMUL\n"
	)
happyReduction_39 _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_3  10 happyReduction_40
happyReduction_40 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_1 ++ happy_var_3 ++ happy_var_1 ++ happy_var_3 ++ "\tDIV\n" ++ "\tMUL\n" ++ "\tSUB\n"
	)
happyReduction_40 _ _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_3  10 happyReduction_41
happyReduction_41 _
	_
	_
	 =  HappyAbsSyn10
		 ("\tIN\n"
	)

happyReduce_42 = happySpecReduce_3  11 happyReduction_42
happyReduction_42 (HappyTerminal (TK _ (VAR happy_var_3)))
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn11
		 (happy_var_1 ++ happy_var_3 ++ "\tDS\t" ++ "1\n"
	)
happyReduction_42 _ _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_3  11 happyReduction_43
happyReduction_43 (HappyTerminal (TK _ (VAR happy_var_3)))
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (happy_var_1 ++ happy_var_3 ++ "\tDS\t" ++ "1\n"
	)
happyReduction_43 _ _ _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_2  12 happyReduction_44
happyReduction_44 (HappyTerminal (TK _ (VAR happy_var_2)))
	_
	 =  HappyAbsSyn12
		 (happy_var_2 ++ "\tDS\t" ++ "1\n"
	)
happyReduction_44 _ _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_3  13 happyReduction_45
happyReduction_45 (HappyAbsSyn8  happy_var_3)
	_
	(HappyTerminal (TK _ (VAR happy_var_1)))
	 =  HappyAbsSyn13
		 ("\tPUSH\t" ++ happy_var_1 ++ "\n" ++ happy_var_3 ++ "\tSTORE\n"
	)
happyReduction_45 _ _ _  = notHappyAtAll 

happyReduce_46 = happyReduce 4 14 happyReduction_46
happyReduction_46 ((HappyAbsSyn8  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TK _ (VAR happy_var_2))) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (happy_var_2 ++ "\tDS\t" ++ "1\n" ++ "\tPUSH\t" ++ happy_var_2 ++ "\n" ++ happy_var_4 ++ "\tSTORE\n"
	) `HappyStk` happyRest

happyReduce_47 = happyMonadReduce 4 15 happyReduction_47
happyReduction_47 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	(HappyAbsSyn8  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest) tk
	 = happyThen ((( if_then happy_var_2 happy_var_3))
	) (\r -> happyReturn (HappyAbsSyn15 r))

happyReduce_48 = happyMonadReduce 6 16 happyReduction_48
happyReduction_48 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	(HappyAbsSyn8  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest) tk
	 = happyThen ((( if_then_else happy_var_2 happy_var_3 happy_var_5))
	) (\r -> happyReturn (HappyAbsSyn16 r))

happyReduce_49 = happyMonadReduce 4 17 happyReduction_49
happyReduction_49 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	(HappyAbsSyn8  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest) tk
	 = happyThen ((( while_do happy_var_2 happy_var_3))
	) (\r -> happyReturn (HappyAbsSyn17 r))

happyReduce_50 = happyMonadReduce 6 18 happyReduction_50
happyReduction_50 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TK _ (VAR happy_var_2))) `HappyStk`
	_ `HappyStk`
	happyRest) tk
	 = happyThen ((( declare_fn happy_var_2 happy_var_5))
	) (\r -> happyReturn (HappyAbsSyn18 r))

happyReduce_51 = happyMonadReduce 8 19 happyReduction_51
happyReduction_51 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TK _ (VAR happy_var_2))) `HappyStk`
	_ `HappyStk`
	happyRest) tk
	 = happyThen ((( declare_fn_ret happy_var_2 happy_var_5 happy_var_7))
	) (\r -> happyReturn (HappyAbsSyn19 r))

happyReduce_52 = happyMonadReduce 3 20 happyReduction_52
happyReduction_52 (_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TK _ (VAR happy_var_1))) `HappyStk`
	happyRest) tk
	 = happyThen ((( call_fn happy_var_1))
	) (\r -> happyReturn (HappyAbsSyn20 r))

happyNewToken action sts stk [] =
	action 54 54 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TK _ PRINT -> cont 21;
	TK _ SEP -> cont 22;
	TK _ COM -> cont 23;
	TK _ (INT happy_dollar_dollar) -> cont 24;
	TK _ PLUS -> cont 25;
	TK _ SUB -> cont 26;
	TK _ MULT -> cont 27;
	TK _ DIV -> cont 28;
	TK _ EQU -> cont 29;
	TK _ LPAR -> cont 30;
	TK _ RPAR -> cont 31;
	TK _ LBRK -> cont 32;
	TK _ RBRK -> cont 33;
	TK _ SM -> cont 34;
	TK _ GR -> cont 35;
	TK _ MOD -> cont 36;
	TK _ AND -> cont 37;
	TK _ OR -> cont 38;
	TK _ NOT -> cont 39;
	TK _ LET -> cont 40;
	TK _ (VAR happy_dollar_dollar) -> cont 41;
	TK _ INP -> cont 42;
	TK _ IF -> cont 43;
	TK _ ELSE -> cont 44;
	TK _ EIF -> cont 45;
	TK _ WH -> cont 46;
	TK _ EWH -> cont 47;
	TK _ TRUE -> cont 48;
	TK _ FALSE -> cont 49;
	TK _ EXIT -> cont 50;
	TK _ FN -> cont 51;
	TK _ EFN -> cont 52;
	TK _ RET -> cont 53;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 54 tk tks = happyError' (tks, explist)
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

declare_fn_ret :: String -> String -> String -> ParseResult String
declare_fn_ret fn_label linst ret_exp = do
  s <- get
  let skip_function = "skipfn" ++ show (counter s)
  let s' = incrCounter s
  put s'
  return(
    "\tPUSH\t" ++ skip_function ++ "\n\tGOTO\n" ++
    fn_label ++ "\tEQU\t*\n" ++
    linst ++ ret_exp ++ "\tSWAP\n\tGOTO\n" ++
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
