{-# OPTIONS_GHC -w #-}
module Parser where

import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.1.1

data HappyAbsSyn t4 t5
	= HappyTerminal (Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,326) ([32,11496,16417,0,0,0,0,0,65535,2407,513,52864,530,0,0,0,0,0,16,38516,16,0,0,0,2048,32768,40960,33971,0,8192,0,32770,4814,64514,40959,3109,0,8192,61440,32767,4278,0,0,49168,65535,16987,0,0,0,0,0,512,52864,530,4,9629,2052,14848,2123,16,38516,8208,59392,8492,64,22992,32834,40960,33971,256,26432,265,32770,4814,1026,40192,1061,8,19258,4104,29696,4246,32,11496,16417,53248,16985,65408,46079,196,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32,11496,33,0,6208,0,0,0,16385,2407,513,52864,530,65532,9631,63508,16383,2251,0,2048,0,0,3104,0,0,0,0,0,65280,30719,265,32770,4814,2,0,0,8,19258,8,0,8,32,11496,16417,53248,16985,128,45984,132,0,0,0,0,0,0,0,0,0,776,0,0,0,0,64,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","Type","num","'+'","'-'","'*'","'%'","\"&&\"","\"||\"","\"|+|\"","\"==\"","\"!=\"","'<'","'>'","\"<=\"","\">=\"","'!'","'?'","true","false","if","then","else","var","'\\\\'","\"->\"","'('","')'","'='","let","in","Bool","Num","':'","for","to","do","%eof"]
        bit_start = st Prelude.* 41
        bit_end = (st Prelude.+ 1) Prelude.* 41
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..40]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (6) = happyShift action_2
action_0 (20) = happyShift action_4
action_0 (22) = happyShift action_5
action_0 (23) = happyShift action_6
action_0 (24) = happyShift action_7
action_0 (27) = happyShift action_8
action_0 (28) = happyShift action_9
action_0 (30) = happyShift action_10
action_0 (33) = happyShift action_11
action_0 (38) = happyShift action_12
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (6) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (6) = happyShift action_2
action_3 (7) = happyShift action_20
action_3 (8) = happyShift action_21
action_3 (9) = happyShift action_22
action_3 (10) = happyShift action_23
action_3 (11) = happyShift action_24
action_3 (12) = happyShift action_25
action_3 (13) = happyShift action_26
action_3 (14) = happyShift action_27
action_3 (15) = happyShift action_28
action_3 (16) = happyShift action_29
action_3 (17) = happyShift action_30
action_3 (18) = happyShift action_31
action_3 (19) = happyShift action_32
action_3 (20) = happyShift action_4
action_3 (21) = happyShift action_33
action_3 (22) = happyShift action_5
action_3 (23) = happyShift action_6
action_3 (24) = happyShift action_7
action_3 (27) = happyShift action_8
action_3 (28) = happyShift action_9
action_3 (30) = happyShift action_10
action_3 (33) = happyShift action_11
action_3 (38) = happyShift action_12
action_3 (41) = happyAccept
action_3 (4) = happyGoto action_19
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (6) = happyShift action_2
action_4 (20) = happyShift action_4
action_4 (22) = happyShift action_5
action_4 (23) = happyShift action_6
action_4 (24) = happyShift action_7
action_4 (27) = happyShift action_8
action_4 (28) = happyShift action_9
action_4 (30) = happyShift action_10
action_4 (33) = happyShift action_11
action_4 (38) = happyShift action_12
action_4 (4) = happyGoto action_18
action_4 _ = happyFail (happyExpListPerState 4)

action_5 _ = happyReduce_2

action_6 _ = happyReduce_3

action_7 (6) = happyShift action_2
action_7 (20) = happyShift action_4
action_7 (22) = happyShift action_5
action_7 (23) = happyShift action_6
action_7 (24) = happyShift action_7
action_7 (27) = happyShift action_8
action_7 (28) = happyShift action_9
action_7 (30) = happyShift action_10
action_7 (33) = happyShift action_11
action_7 (38) = happyShift action_12
action_7 (4) = happyGoto action_17
action_7 _ = happyFail (happyExpListPerState 7)

action_8 _ = happyReduce_20

action_9 (27) = happyShift action_16
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (6) = happyShift action_2
action_10 (20) = happyShift action_4
action_10 (22) = happyShift action_5
action_10 (23) = happyShift action_6
action_10 (24) = happyShift action_7
action_10 (27) = happyShift action_8
action_10 (28) = happyShift action_9
action_10 (30) = happyShift action_10
action_10 (33) = happyShift action_11
action_10 (38) = happyShift action_12
action_10 (4) = happyGoto action_15
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (27) = happyShift action_14
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (6) = happyShift action_2
action_12 (20) = happyShift action_4
action_12 (22) = happyShift action_5
action_12 (23) = happyShift action_6
action_12 (24) = happyShift action_7
action_12 (27) = happyShift action_8
action_12 (28) = happyShift action_9
action_12 (30) = happyShift action_10
action_12 (33) = happyShift action_11
action_12 (38) = happyShift action_12
action_12 (4) = happyGoto action_13
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (6) = happyShift action_2
action_13 (7) = happyShift action_20
action_13 (8) = happyShift action_21
action_13 (9) = happyShift action_22
action_13 (10) = happyShift action_23
action_13 (11) = happyShift action_24
action_13 (12) = happyShift action_25
action_13 (13) = happyShift action_26
action_13 (14) = happyShift action_27
action_13 (15) = happyShift action_28
action_13 (16) = happyShift action_29
action_13 (17) = happyShift action_30
action_13 (18) = happyShift action_31
action_13 (19) = happyShift action_32
action_13 (20) = happyShift action_4
action_13 (21) = happyShift action_33
action_13 (22) = happyShift action_5
action_13 (23) = happyShift action_6
action_13 (24) = happyShift action_7
action_13 (27) = happyShift action_8
action_13 (28) = happyShift action_9
action_13 (30) = happyShift action_10
action_13 (33) = happyShift action_11
action_13 (38) = happyShift action_12
action_13 (39) = happyShift action_52
action_13 (4) = happyGoto action_19
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (32) = happyShift action_51
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (6) = happyShift action_2
action_15 (7) = happyShift action_20
action_15 (8) = happyShift action_21
action_15 (9) = happyShift action_22
action_15 (10) = happyShift action_23
action_15 (11) = happyShift action_24
action_15 (12) = happyShift action_25
action_15 (13) = happyShift action_26
action_15 (14) = happyShift action_27
action_15 (15) = happyShift action_28
action_15 (16) = happyShift action_29
action_15 (17) = happyShift action_30
action_15 (18) = happyShift action_31
action_15 (19) = happyShift action_32
action_15 (20) = happyShift action_4
action_15 (21) = happyShift action_33
action_15 (22) = happyShift action_5
action_15 (23) = happyShift action_6
action_15 (24) = happyShift action_7
action_15 (27) = happyShift action_8
action_15 (28) = happyShift action_9
action_15 (30) = happyShift action_10
action_15 (31) = happyShift action_50
action_15 (33) = happyShift action_11
action_15 (38) = happyShift action_12
action_15 (4) = happyGoto action_19
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (37) = happyShift action_49
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (6) = happyShift action_2
action_17 (7) = happyShift action_20
action_17 (8) = happyShift action_21
action_17 (9) = happyShift action_22
action_17 (10) = happyShift action_23
action_17 (11) = happyShift action_24
action_17 (12) = happyShift action_25
action_17 (13) = happyShift action_26
action_17 (14) = happyShift action_27
action_17 (15) = happyShift action_28
action_17 (16) = happyShift action_29
action_17 (17) = happyShift action_30
action_17 (18) = happyShift action_31
action_17 (19) = happyShift action_32
action_17 (20) = happyShift action_4
action_17 (21) = happyShift action_33
action_17 (22) = happyShift action_5
action_17 (23) = happyShift action_6
action_17 (24) = happyShift action_7
action_17 (25) = happyShift action_48
action_17 (27) = happyShift action_8
action_17 (28) = happyShift action_9
action_17 (30) = happyShift action_10
action_17 (33) = happyShift action_11
action_17 (38) = happyShift action_12
action_17 (4) = happyGoto action_19
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (6) = happyShift action_2
action_18 (7) = happyShift action_20
action_18 (8) = happyShift action_21
action_18 (9) = happyShift action_22
action_18 (10) = happyShift action_23
action_18 (11) = happyShift action_24
action_18 (12) = happyShift action_25
action_18 (13) = happyShift action_26
action_18 (14) = happyShift action_27
action_18 (15) = happyShift action_28
action_18 (16) = happyShift action_29
action_18 (17) = happyShift action_30
action_18 (18) = happyShift action_31
action_18 (19) = happyShift action_32
action_18 (20) = happyShift action_4
action_18 (21) = happyShift action_33
action_18 (22) = happyShift action_5
action_18 (23) = happyShift action_6
action_18 (24) = happyShift action_7
action_18 (27) = happyShift action_8
action_18 (28) = happyShift action_9
action_18 (30) = happyShift action_10
action_18 (33) = happyShift action_11
action_18 (38) = happyShift action_12
action_18 (4) = happyGoto action_19
action_18 _ = happyReduce_17

action_19 (6) = happyShift action_2
action_19 (7) = happyShift action_20
action_19 (8) = happyShift action_21
action_19 (9) = happyShift action_22
action_19 (10) = happyShift action_23
action_19 (11) = happyShift action_24
action_19 (12) = happyShift action_25
action_19 (13) = happyShift action_26
action_19 (14) = happyShift action_27
action_19 (15) = happyShift action_28
action_19 (16) = happyShift action_29
action_19 (17) = happyShift action_30
action_19 (18) = happyShift action_31
action_19 (19) = happyShift action_32
action_19 (20) = happyShift action_4
action_19 (21) = happyShift action_33
action_19 (22) = happyShift action_5
action_19 (23) = happyShift action_6
action_19 (24) = happyShift action_7
action_19 (27) = happyShift action_8
action_19 (28) = happyShift action_9
action_19 (30) = happyShift action_10
action_19 (33) = happyShift action_11
action_19 (38) = happyShift action_12
action_19 (4) = happyGoto action_19
action_19 _ = happyReduce_22

action_20 (6) = happyShift action_2
action_20 (20) = happyShift action_4
action_20 (22) = happyShift action_5
action_20 (23) = happyShift action_6
action_20 (24) = happyShift action_7
action_20 (27) = happyShift action_8
action_20 (28) = happyShift action_9
action_20 (30) = happyShift action_10
action_20 (33) = happyShift action_11
action_20 (38) = happyShift action_12
action_20 (4) = happyGoto action_47
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (6) = happyShift action_2
action_21 (20) = happyShift action_4
action_21 (22) = happyShift action_5
action_21 (23) = happyShift action_6
action_21 (24) = happyShift action_7
action_21 (27) = happyShift action_8
action_21 (28) = happyShift action_9
action_21 (30) = happyShift action_10
action_21 (33) = happyShift action_11
action_21 (38) = happyShift action_12
action_21 (4) = happyGoto action_46
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (6) = happyShift action_2
action_22 (20) = happyShift action_4
action_22 (22) = happyShift action_5
action_22 (23) = happyShift action_6
action_22 (24) = happyShift action_7
action_22 (27) = happyShift action_8
action_22 (28) = happyShift action_9
action_22 (30) = happyShift action_10
action_22 (33) = happyShift action_11
action_22 (38) = happyShift action_12
action_22 (4) = happyGoto action_45
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (6) = happyShift action_2
action_23 (20) = happyShift action_4
action_23 (22) = happyShift action_5
action_23 (23) = happyShift action_6
action_23 (24) = happyShift action_7
action_23 (27) = happyShift action_8
action_23 (28) = happyShift action_9
action_23 (30) = happyShift action_10
action_23 (33) = happyShift action_11
action_23 (38) = happyShift action_12
action_23 (4) = happyGoto action_44
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (6) = happyShift action_2
action_24 (20) = happyShift action_4
action_24 (22) = happyShift action_5
action_24 (23) = happyShift action_6
action_24 (24) = happyShift action_7
action_24 (27) = happyShift action_8
action_24 (28) = happyShift action_9
action_24 (30) = happyShift action_10
action_24 (33) = happyShift action_11
action_24 (38) = happyShift action_12
action_24 (4) = happyGoto action_43
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (6) = happyShift action_2
action_25 (20) = happyShift action_4
action_25 (22) = happyShift action_5
action_25 (23) = happyShift action_6
action_25 (24) = happyShift action_7
action_25 (27) = happyShift action_8
action_25 (28) = happyShift action_9
action_25 (30) = happyShift action_10
action_25 (33) = happyShift action_11
action_25 (38) = happyShift action_12
action_25 (4) = happyGoto action_42
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (6) = happyShift action_2
action_26 (20) = happyShift action_4
action_26 (22) = happyShift action_5
action_26 (23) = happyShift action_6
action_26 (24) = happyShift action_7
action_26 (27) = happyShift action_8
action_26 (28) = happyShift action_9
action_26 (30) = happyShift action_10
action_26 (33) = happyShift action_11
action_26 (38) = happyShift action_12
action_26 (4) = happyGoto action_41
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (6) = happyShift action_2
action_27 (20) = happyShift action_4
action_27 (22) = happyShift action_5
action_27 (23) = happyShift action_6
action_27 (24) = happyShift action_7
action_27 (27) = happyShift action_8
action_27 (28) = happyShift action_9
action_27 (30) = happyShift action_10
action_27 (33) = happyShift action_11
action_27 (38) = happyShift action_12
action_27 (4) = happyGoto action_40
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (6) = happyShift action_2
action_28 (20) = happyShift action_4
action_28 (22) = happyShift action_5
action_28 (23) = happyShift action_6
action_28 (24) = happyShift action_7
action_28 (27) = happyShift action_8
action_28 (28) = happyShift action_9
action_28 (30) = happyShift action_10
action_28 (33) = happyShift action_11
action_28 (38) = happyShift action_12
action_28 (4) = happyGoto action_39
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (6) = happyShift action_2
action_29 (20) = happyShift action_4
action_29 (22) = happyShift action_5
action_29 (23) = happyShift action_6
action_29 (24) = happyShift action_7
action_29 (27) = happyShift action_8
action_29 (28) = happyShift action_9
action_29 (30) = happyShift action_10
action_29 (33) = happyShift action_11
action_29 (38) = happyShift action_12
action_29 (4) = happyGoto action_38
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (6) = happyShift action_2
action_30 (20) = happyShift action_4
action_30 (22) = happyShift action_5
action_30 (23) = happyShift action_6
action_30 (24) = happyShift action_7
action_30 (27) = happyShift action_8
action_30 (28) = happyShift action_9
action_30 (30) = happyShift action_10
action_30 (33) = happyShift action_11
action_30 (38) = happyShift action_12
action_30 (4) = happyGoto action_37
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (6) = happyShift action_2
action_31 (20) = happyShift action_4
action_31 (22) = happyShift action_5
action_31 (23) = happyShift action_6
action_31 (24) = happyShift action_7
action_31 (27) = happyShift action_8
action_31 (28) = happyShift action_9
action_31 (30) = happyShift action_10
action_31 (33) = happyShift action_11
action_31 (38) = happyShift action_12
action_31 (4) = happyGoto action_36
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (6) = happyShift action_2
action_32 (20) = happyShift action_4
action_32 (22) = happyShift action_5
action_32 (23) = happyShift action_6
action_32 (24) = happyShift action_7
action_32 (27) = happyShift action_8
action_32 (28) = happyShift action_9
action_32 (30) = happyShift action_10
action_32 (33) = happyShift action_11
action_32 (38) = happyShift action_12
action_32 (4) = happyGoto action_35
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (6) = happyShift action_2
action_33 (20) = happyShift action_4
action_33 (22) = happyShift action_5
action_33 (23) = happyShift action_6
action_33 (24) = happyShift action_7
action_33 (27) = happyShift action_8
action_33 (28) = happyShift action_9
action_33 (30) = happyShift action_10
action_33 (33) = happyShift action_11
action_33 (38) = happyShift action_12
action_33 (4) = happyGoto action_34
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (6) = happyShift action_2
action_34 (7) = happyShift action_20
action_34 (8) = happyShift action_21
action_34 (9) = happyShift action_22
action_34 (10) = happyShift action_23
action_34 (11) = happyShift action_24
action_34 (12) = happyShift action_25
action_34 (13) = happyShift action_26
action_34 (14) = happyShift action_27
action_34 (15) = happyShift action_28
action_34 (16) = happyShift action_29
action_34 (17) = happyShift action_30
action_34 (18) = happyShift action_31
action_34 (19) = happyShift action_32
action_34 (20) = happyShift action_4
action_34 (21) = happyShift action_33
action_34 (22) = happyShift action_5
action_34 (23) = happyShift action_6
action_34 (24) = happyShift action_7
action_34 (27) = happyShift action_8
action_34 (28) = happyShift action_9
action_34 (30) = happyShift action_10
action_34 (33) = happyShift action_11
action_34 (37) = happyShift action_60
action_34 (38) = happyShift action_12
action_34 (4) = happyGoto action_19
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (6) = happyShift action_2
action_35 (7) = happyShift action_20
action_35 (8) = happyShift action_21
action_35 (9) = happyShift action_22
action_35 (10) = happyShift action_23
action_35 (11) = happyShift action_24
action_35 (12) = happyShift action_25
action_35 (13) = happyShift action_26
action_35 (14) = happyShift action_27
action_35 (15) = happyShift action_28
action_35 (16) = happyShift action_29
action_35 (17) = happyShift action_30
action_35 (18) = happyShift action_31
action_35 (19) = happyShift action_32
action_35 (20) = happyShift action_4
action_35 (21) = happyShift action_33
action_35 (22) = happyShift action_5
action_35 (23) = happyShift action_6
action_35 (24) = happyShift action_7
action_35 (27) = happyShift action_8
action_35 (28) = happyShift action_9
action_35 (30) = happyShift action_10
action_35 (33) = happyShift action_11
action_35 (38) = happyShift action_12
action_35 (4) = happyGoto action_19
action_35 _ = happyReduce_16

action_36 (6) = happyShift action_2
action_36 (7) = happyShift action_20
action_36 (8) = happyShift action_21
action_36 (9) = happyShift action_22
action_36 (10) = happyShift action_23
action_36 (11) = happyShift action_24
action_36 (12) = happyShift action_25
action_36 (13) = happyShift action_26
action_36 (14) = happyShift action_27
action_36 (15) = happyShift action_28
action_36 (16) = happyShift action_29
action_36 (17) = happyShift action_30
action_36 (18) = happyShift action_31
action_36 (19) = happyShift action_32
action_36 (20) = happyShift action_4
action_36 (21) = happyShift action_33
action_36 (22) = happyShift action_5
action_36 (23) = happyShift action_6
action_36 (24) = happyShift action_7
action_36 (27) = happyShift action_8
action_36 (28) = happyShift action_9
action_36 (30) = happyShift action_10
action_36 (33) = happyShift action_11
action_36 (38) = happyShift action_12
action_36 (4) = happyGoto action_19
action_36 _ = happyReduce_15

action_37 (6) = happyShift action_2
action_37 (7) = happyShift action_20
action_37 (8) = happyShift action_21
action_37 (9) = happyShift action_22
action_37 (10) = happyShift action_23
action_37 (11) = happyShift action_24
action_37 (12) = happyShift action_25
action_37 (13) = happyShift action_26
action_37 (14) = happyShift action_27
action_37 (15) = happyShift action_28
action_37 (16) = happyShift action_29
action_37 (17) = happyShift action_30
action_37 (18) = happyShift action_31
action_37 (19) = happyShift action_32
action_37 (20) = happyShift action_4
action_37 (21) = happyShift action_33
action_37 (22) = happyShift action_5
action_37 (23) = happyShift action_6
action_37 (24) = happyShift action_7
action_37 (27) = happyShift action_8
action_37 (28) = happyShift action_9
action_37 (30) = happyShift action_10
action_37 (33) = happyShift action_11
action_37 (38) = happyShift action_12
action_37 (4) = happyGoto action_19
action_37 _ = happyReduce_14

action_38 (6) = happyShift action_2
action_38 (7) = happyShift action_20
action_38 (8) = happyShift action_21
action_38 (9) = happyShift action_22
action_38 (10) = happyShift action_23
action_38 (11) = happyShift action_24
action_38 (12) = happyShift action_25
action_38 (13) = happyShift action_26
action_38 (14) = happyShift action_27
action_38 (15) = happyShift action_28
action_38 (16) = happyShift action_29
action_38 (17) = happyShift action_30
action_38 (18) = happyShift action_31
action_38 (19) = happyShift action_32
action_38 (20) = happyShift action_4
action_38 (21) = happyShift action_33
action_38 (22) = happyShift action_5
action_38 (23) = happyShift action_6
action_38 (24) = happyShift action_7
action_38 (27) = happyShift action_8
action_38 (28) = happyShift action_9
action_38 (30) = happyShift action_10
action_38 (33) = happyShift action_11
action_38 (38) = happyShift action_12
action_38 (4) = happyGoto action_19
action_38 _ = happyReduce_13

action_39 (6) = happyShift action_2
action_39 (7) = happyShift action_20
action_39 (8) = happyShift action_21
action_39 (9) = happyShift action_22
action_39 (10) = happyShift action_23
action_39 (11) = happyShift action_24
action_39 (12) = happyShift action_25
action_39 (13) = happyShift action_26
action_39 (14) = happyShift action_27
action_39 (15) = happyShift action_28
action_39 (16) = happyShift action_29
action_39 (17) = happyShift action_30
action_39 (18) = happyShift action_31
action_39 (19) = happyShift action_32
action_39 (20) = happyShift action_4
action_39 (21) = happyShift action_33
action_39 (22) = happyShift action_5
action_39 (23) = happyShift action_6
action_39 (24) = happyShift action_7
action_39 (27) = happyShift action_8
action_39 (28) = happyShift action_9
action_39 (30) = happyShift action_10
action_39 (33) = happyShift action_11
action_39 (38) = happyShift action_12
action_39 (4) = happyGoto action_19
action_39 _ = happyReduce_12

action_40 (6) = happyShift action_2
action_40 (7) = happyShift action_20
action_40 (8) = happyShift action_21
action_40 (9) = happyShift action_22
action_40 (10) = happyShift action_23
action_40 (11) = happyShift action_24
action_40 (12) = happyShift action_25
action_40 (13) = happyShift action_26
action_40 (14) = happyShift action_27
action_40 (15) = happyShift action_28
action_40 (16) = happyShift action_29
action_40 (17) = happyShift action_30
action_40 (18) = happyShift action_31
action_40 (19) = happyShift action_32
action_40 (20) = happyShift action_4
action_40 (21) = happyShift action_33
action_40 (22) = happyShift action_5
action_40 (23) = happyShift action_6
action_40 (24) = happyShift action_7
action_40 (27) = happyShift action_8
action_40 (28) = happyShift action_9
action_40 (30) = happyShift action_10
action_40 (33) = happyShift action_11
action_40 (38) = happyShift action_12
action_40 (4) = happyGoto action_19
action_40 _ = happyReduce_11

action_41 (6) = happyShift action_2
action_41 (7) = happyShift action_20
action_41 (8) = happyShift action_21
action_41 (9) = happyShift action_22
action_41 (10) = happyShift action_23
action_41 (11) = happyShift action_24
action_41 (12) = happyShift action_25
action_41 (13) = happyShift action_26
action_41 (14) = happyShift action_27
action_41 (15) = happyShift action_28
action_41 (16) = happyShift action_29
action_41 (17) = happyShift action_30
action_41 (18) = happyShift action_31
action_41 (19) = happyShift action_32
action_41 (20) = happyShift action_4
action_41 (21) = happyShift action_33
action_41 (22) = happyShift action_5
action_41 (23) = happyShift action_6
action_41 (24) = happyShift action_7
action_41 (27) = happyShift action_8
action_41 (28) = happyShift action_9
action_41 (30) = happyShift action_10
action_41 (33) = happyShift action_11
action_41 (38) = happyShift action_12
action_41 (4) = happyGoto action_19
action_41 _ = happyReduce_10

action_42 (6) = happyShift action_2
action_42 (7) = happyShift action_20
action_42 (8) = happyShift action_21
action_42 (9) = happyShift action_22
action_42 (10) = happyShift action_23
action_42 (11) = happyShift action_24
action_42 (12) = happyShift action_25
action_42 (13) = happyShift action_26
action_42 (14) = happyShift action_27
action_42 (15) = happyShift action_28
action_42 (16) = happyShift action_29
action_42 (17) = happyShift action_30
action_42 (18) = happyShift action_31
action_42 (19) = happyShift action_32
action_42 (20) = happyShift action_4
action_42 (21) = happyShift action_33
action_42 (22) = happyShift action_5
action_42 (23) = happyShift action_6
action_42 (24) = happyShift action_7
action_42 (27) = happyShift action_8
action_42 (28) = happyShift action_9
action_42 (30) = happyShift action_10
action_42 (33) = happyShift action_11
action_42 (38) = happyShift action_12
action_42 (4) = happyGoto action_19
action_42 _ = happyReduce_9

action_43 (6) = happyShift action_2
action_43 (7) = happyShift action_20
action_43 (8) = happyShift action_21
action_43 (9) = happyShift action_22
action_43 (10) = happyShift action_23
action_43 (11) = happyShift action_24
action_43 (12) = happyShift action_25
action_43 (13) = happyShift action_26
action_43 (14) = happyShift action_27
action_43 (15) = happyShift action_28
action_43 (16) = happyShift action_29
action_43 (17) = happyShift action_30
action_43 (18) = happyShift action_31
action_43 (19) = happyShift action_32
action_43 (20) = happyShift action_4
action_43 (21) = happyShift action_33
action_43 (22) = happyShift action_5
action_43 (23) = happyShift action_6
action_43 (24) = happyShift action_7
action_43 (27) = happyShift action_8
action_43 (28) = happyShift action_9
action_43 (30) = happyShift action_10
action_43 (33) = happyShift action_11
action_43 (38) = happyShift action_12
action_43 (4) = happyGoto action_19
action_43 _ = happyReduce_8

action_44 (6) = happyShift action_2
action_44 (7) = happyShift action_20
action_44 (8) = happyShift action_21
action_44 (9) = happyShift action_22
action_44 (10) = happyShift action_23
action_44 (11) = happyShift action_24
action_44 (12) = happyShift action_25
action_44 (13) = happyShift action_26
action_44 (14) = happyShift action_27
action_44 (15) = happyShift action_28
action_44 (16) = happyShift action_29
action_44 (17) = happyShift action_30
action_44 (18) = happyShift action_31
action_44 (19) = happyShift action_32
action_44 (20) = happyShift action_4
action_44 (21) = happyShift action_33
action_44 (22) = happyShift action_5
action_44 (23) = happyShift action_6
action_44 (24) = happyShift action_7
action_44 (27) = happyShift action_8
action_44 (28) = happyShift action_9
action_44 (30) = happyShift action_10
action_44 (33) = happyShift action_11
action_44 (38) = happyShift action_12
action_44 (4) = happyGoto action_19
action_44 _ = happyReduce_7

action_45 (6) = happyShift action_2
action_45 (7) = happyShift action_20
action_45 (8) = happyShift action_21
action_45 (9) = happyShift action_22
action_45 (10) = happyShift action_23
action_45 (11) = happyShift action_24
action_45 (12) = happyShift action_25
action_45 (13) = happyShift action_26
action_45 (14) = happyShift action_27
action_45 (15) = happyShift action_28
action_45 (16) = happyShift action_29
action_45 (17) = happyShift action_30
action_45 (18) = happyShift action_31
action_45 (19) = happyShift action_32
action_45 (20) = happyShift action_4
action_45 (21) = happyShift action_33
action_45 (22) = happyShift action_5
action_45 (23) = happyShift action_6
action_45 (24) = happyShift action_7
action_45 (27) = happyShift action_8
action_45 (28) = happyShift action_9
action_45 (30) = happyShift action_10
action_45 (33) = happyShift action_11
action_45 (38) = happyShift action_12
action_45 (4) = happyGoto action_19
action_45 _ = happyReduce_6

action_46 (6) = happyShift action_2
action_46 (7) = happyShift action_20
action_46 (8) = happyShift action_21
action_46 (9) = happyShift action_22
action_46 (10) = happyShift action_23
action_46 (11) = happyShift action_24
action_46 (12) = happyShift action_25
action_46 (13) = happyShift action_26
action_46 (14) = happyShift action_27
action_46 (15) = happyShift action_28
action_46 (16) = happyShift action_29
action_46 (17) = happyShift action_30
action_46 (18) = happyShift action_31
action_46 (19) = happyShift action_32
action_46 (20) = happyShift action_4
action_46 (21) = happyShift action_33
action_46 (22) = happyShift action_5
action_46 (23) = happyShift action_6
action_46 (24) = happyShift action_7
action_46 (27) = happyShift action_8
action_46 (28) = happyShift action_9
action_46 (30) = happyShift action_10
action_46 (33) = happyShift action_11
action_46 (38) = happyShift action_12
action_46 (4) = happyGoto action_19
action_46 _ = happyReduce_5

action_47 (6) = happyShift action_2
action_47 (7) = happyShift action_20
action_47 (8) = happyShift action_21
action_47 (9) = happyShift action_22
action_47 (10) = happyShift action_23
action_47 (11) = happyShift action_24
action_47 (12) = happyShift action_25
action_47 (13) = happyShift action_26
action_47 (14) = happyShift action_27
action_47 (15) = happyShift action_28
action_47 (16) = happyShift action_29
action_47 (17) = happyShift action_30
action_47 (18) = happyShift action_31
action_47 (19) = happyShift action_32
action_47 (20) = happyShift action_4
action_47 (21) = happyShift action_33
action_47 (22) = happyShift action_5
action_47 (23) = happyShift action_6
action_47 (24) = happyShift action_7
action_47 (27) = happyShift action_8
action_47 (28) = happyShift action_9
action_47 (30) = happyShift action_10
action_47 (33) = happyShift action_11
action_47 (38) = happyShift action_12
action_47 (4) = happyGoto action_19
action_47 _ = happyReduce_4

action_48 (6) = happyShift action_2
action_48 (20) = happyShift action_4
action_48 (22) = happyShift action_5
action_48 (23) = happyShift action_6
action_48 (24) = happyShift action_7
action_48 (27) = happyShift action_8
action_48 (28) = happyShift action_9
action_48 (30) = happyShift action_10
action_48 (33) = happyShift action_11
action_48 (38) = happyShift action_12
action_48 (4) = happyGoto action_59
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (30) = happyShift action_56
action_49 (35) = happyShift action_57
action_49 (36) = happyShift action_58
action_49 (5) = happyGoto action_55
action_49 _ = happyFail (happyExpListPerState 49)

action_50 _ = happyReduce_23

action_51 (6) = happyShift action_2
action_51 (20) = happyShift action_4
action_51 (22) = happyShift action_5
action_51 (23) = happyShift action_6
action_51 (24) = happyShift action_7
action_51 (27) = happyShift action_8
action_51 (28) = happyShift action_9
action_51 (30) = happyShift action_10
action_51 (33) = happyShift action_11
action_51 (38) = happyShift action_12
action_51 (4) = happyGoto action_54
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (6) = happyShift action_2
action_52 (20) = happyShift action_4
action_52 (22) = happyShift action_5
action_52 (23) = happyShift action_6
action_52 (24) = happyShift action_7
action_52 (27) = happyShift action_8
action_52 (28) = happyShift action_9
action_52 (30) = happyShift action_10
action_52 (33) = happyShift action_11
action_52 (38) = happyShift action_12
action_52 (4) = happyGoto action_53
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (6) = happyShift action_2
action_53 (7) = happyShift action_20
action_53 (8) = happyShift action_21
action_53 (9) = happyShift action_22
action_53 (10) = happyShift action_23
action_53 (11) = happyShift action_24
action_53 (12) = happyShift action_25
action_53 (13) = happyShift action_26
action_53 (14) = happyShift action_27
action_53 (15) = happyShift action_28
action_53 (16) = happyShift action_29
action_53 (17) = happyShift action_30
action_53 (18) = happyShift action_31
action_53 (19) = happyShift action_32
action_53 (20) = happyShift action_4
action_53 (21) = happyShift action_33
action_53 (22) = happyShift action_5
action_53 (23) = happyShift action_6
action_53 (24) = happyShift action_7
action_53 (27) = happyShift action_8
action_53 (28) = happyShift action_9
action_53 (30) = happyShift action_10
action_53 (33) = happyShift action_11
action_53 (38) = happyShift action_12
action_53 (40) = happyShift action_66
action_53 (4) = happyGoto action_19
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (6) = happyShift action_2
action_54 (7) = happyShift action_20
action_54 (8) = happyShift action_21
action_54 (9) = happyShift action_22
action_54 (10) = happyShift action_23
action_54 (11) = happyShift action_24
action_54 (12) = happyShift action_25
action_54 (13) = happyShift action_26
action_54 (14) = happyShift action_27
action_54 (15) = happyShift action_28
action_54 (16) = happyShift action_29
action_54 (17) = happyShift action_30
action_54 (18) = happyShift action_31
action_54 (19) = happyShift action_32
action_54 (20) = happyShift action_4
action_54 (21) = happyShift action_33
action_54 (22) = happyShift action_5
action_54 (23) = happyShift action_6
action_54 (24) = happyShift action_7
action_54 (27) = happyShift action_8
action_54 (28) = happyShift action_9
action_54 (30) = happyShift action_10
action_54 (33) = happyShift action_11
action_54 (34) = happyShift action_65
action_54 (38) = happyShift action_12
action_54 (4) = happyGoto action_19
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (29) = happyShift action_64
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (30) = happyShift action_56
action_56 (35) = happyShift action_57
action_56 (36) = happyShift action_58
action_56 (5) = happyGoto action_63
action_56 _ = happyFail (happyExpListPerState 56)

action_57 _ = happyReduce_26

action_58 _ = happyReduce_27

action_59 (6) = happyShift action_2
action_59 (7) = happyShift action_20
action_59 (8) = happyShift action_21
action_59 (9) = happyShift action_22
action_59 (10) = happyShift action_23
action_59 (11) = happyShift action_24
action_59 (12) = happyShift action_25
action_59 (13) = happyShift action_26
action_59 (14) = happyShift action_27
action_59 (15) = happyShift action_28
action_59 (16) = happyShift action_29
action_59 (17) = happyShift action_30
action_59 (18) = happyShift action_31
action_59 (19) = happyShift action_32
action_59 (20) = happyShift action_4
action_59 (21) = happyShift action_33
action_59 (22) = happyShift action_5
action_59 (23) = happyShift action_6
action_59 (24) = happyShift action_7
action_59 (26) = happyShift action_62
action_59 (27) = happyShift action_8
action_59 (28) = happyShift action_9
action_59 (30) = happyShift action_10
action_59 (33) = happyShift action_11
action_59 (38) = happyShift action_12
action_59 (4) = happyGoto action_19
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (6) = happyShift action_2
action_60 (20) = happyShift action_4
action_60 (22) = happyShift action_5
action_60 (23) = happyShift action_6
action_60 (24) = happyShift action_7
action_60 (27) = happyShift action_8
action_60 (28) = happyShift action_9
action_60 (30) = happyShift action_10
action_60 (33) = happyShift action_11
action_60 (38) = happyShift action_12
action_60 (4) = happyGoto action_61
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (6) = happyShift action_2
action_61 (7) = happyShift action_20
action_61 (8) = happyShift action_21
action_61 (9) = happyShift action_22
action_61 (10) = happyShift action_23
action_61 (11) = happyShift action_24
action_61 (12) = happyShift action_25
action_61 (13) = happyShift action_26
action_61 (14) = happyShift action_27
action_61 (15) = happyShift action_28
action_61 (16) = happyShift action_29
action_61 (17) = happyShift action_30
action_61 (18) = happyShift action_31
action_61 (19) = happyShift action_32
action_61 (20) = happyShift action_4
action_61 (21) = happyShift action_33
action_61 (22) = happyShift action_5
action_61 (23) = happyShift action_6
action_61 (24) = happyShift action_7
action_61 (27) = happyShift action_8
action_61 (28) = happyShift action_9
action_61 (30) = happyShift action_10
action_61 (33) = happyShift action_11
action_61 (38) = happyShift action_12
action_61 (4) = happyGoto action_19
action_61 _ = happyReduce_19

action_62 (6) = happyShift action_2
action_62 (20) = happyShift action_4
action_62 (22) = happyShift action_5
action_62 (23) = happyShift action_6
action_62 (24) = happyShift action_7
action_62 (27) = happyShift action_8
action_62 (28) = happyShift action_9
action_62 (30) = happyShift action_10
action_62 (33) = happyShift action_11
action_62 (38) = happyShift action_12
action_62 (4) = happyGoto action_71
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (29) = happyShift action_70
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (6) = happyShift action_2
action_64 (20) = happyShift action_4
action_64 (22) = happyShift action_5
action_64 (23) = happyShift action_6
action_64 (24) = happyShift action_7
action_64 (27) = happyShift action_8
action_64 (28) = happyShift action_9
action_64 (30) = happyShift action_10
action_64 (33) = happyShift action_11
action_64 (38) = happyShift action_12
action_64 (4) = happyGoto action_69
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (6) = happyShift action_2
action_65 (20) = happyShift action_4
action_65 (22) = happyShift action_5
action_65 (23) = happyShift action_6
action_65 (24) = happyShift action_7
action_65 (27) = happyShift action_8
action_65 (28) = happyShift action_9
action_65 (30) = happyShift action_10
action_65 (33) = happyShift action_11
action_65 (38) = happyShift action_12
action_65 (4) = happyGoto action_68
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (6) = happyShift action_2
action_66 (20) = happyShift action_4
action_66 (22) = happyShift action_5
action_66 (23) = happyShift action_6
action_66 (24) = happyShift action_7
action_66 (27) = happyShift action_8
action_66 (28) = happyShift action_9
action_66 (30) = happyShift action_10
action_66 (33) = happyShift action_11
action_66 (38) = happyShift action_12
action_66 (4) = happyGoto action_67
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (6) = happyShift action_2
action_67 (7) = happyShift action_20
action_67 (8) = happyShift action_21
action_67 (9) = happyShift action_22
action_67 (10) = happyShift action_23
action_67 (11) = happyShift action_24
action_67 (12) = happyShift action_25
action_67 (13) = happyShift action_26
action_67 (14) = happyShift action_27
action_67 (15) = happyShift action_28
action_67 (16) = happyShift action_29
action_67 (17) = happyShift action_30
action_67 (18) = happyShift action_31
action_67 (19) = happyShift action_32
action_67 (20) = happyShift action_4
action_67 (21) = happyShift action_33
action_67 (22) = happyShift action_5
action_67 (23) = happyShift action_6
action_67 (24) = happyShift action_7
action_67 (27) = happyShift action_8
action_67 (28) = happyShift action_9
action_67 (30) = happyShift action_10
action_67 (33) = happyShift action_11
action_67 (38) = happyShift action_12
action_67 (4) = happyGoto action_19
action_67 _ = happyReduce_25

action_68 (6) = happyShift action_2
action_68 (7) = happyShift action_20
action_68 (8) = happyShift action_21
action_68 (9) = happyShift action_22
action_68 (10) = happyShift action_23
action_68 (11) = happyShift action_24
action_68 (12) = happyShift action_25
action_68 (13) = happyShift action_26
action_68 (14) = happyShift action_27
action_68 (15) = happyShift action_28
action_68 (16) = happyShift action_29
action_68 (17) = happyShift action_30
action_68 (18) = happyShift action_31
action_68 (19) = happyShift action_32
action_68 (20) = happyShift action_4
action_68 (21) = happyShift action_33
action_68 (22) = happyShift action_5
action_68 (23) = happyShift action_6
action_68 (24) = happyShift action_7
action_68 (27) = happyShift action_8
action_68 (28) = happyShift action_9
action_68 (30) = happyShift action_10
action_68 (33) = happyShift action_11
action_68 (38) = happyShift action_12
action_68 (4) = happyGoto action_19
action_68 _ = happyReduce_24

action_69 (6) = happyShift action_2
action_69 (7) = happyShift action_20
action_69 (8) = happyShift action_21
action_69 (9) = happyShift action_22
action_69 (10) = happyShift action_23
action_69 (11) = happyShift action_24
action_69 (12) = happyShift action_25
action_69 (13) = happyShift action_26
action_69 (14) = happyShift action_27
action_69 (15) = happyShift action_28
action_69 (16) = happyShift action_29
action_69 (17) = happyShift action_30
action_69 (18) = happyShift action_31
action_69 (19) = happyShift action_32
action_69 (20) = happyShift action_4
action_69 (21) = happyShift action_33
action_69 (22) = happyShift action_5
action_69 (23) = happyShift action_6
action_69 (24) = happyShift action_7
action_69 (27) = happyShift action_8
action_69 (28) = happyShift action_9
action_69 (30) = happyShift action_10
action_69 (33) = happyShift action_11
action_69 (38) = happyShift action_12
action_69 (4) = happyGoto action_19
action_69 _ = happyReduce_21

action_70 (30) = happyShift action_56
action_70 (35) = happyShift action_57
action_70 (36) = happyShift action_58
action_70 (5) = happyGoto action_72
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (6) = happyShift action_2
action_71 (7) = happyShift action_20
action_71 (8) = happyShift action_21
action_71 (9) = happyShift action_22
action_71 (10) = happyShift action_23
action_71 (11) = happyShift action_24
action_71 (12) = happyShift action_25
action_71 (13) = happyShift action_26
action_71 (14) = happyShift action_27
action_71 (15) = happyShift action_28
action_71 (16) = happyShift action_29
action_71 (17) = happyShift action_30
action_71 (18) = happyShift action_31
action_71 (19) = happyShift action_32
action_71 (20) = happyShift action_4
action_71 (21) = happyShift action_33
action_71 (22) = happyShift action_5
action_71 (23) = happyShift action_6
action_71 (24) = happyShift action_7
action_71 (27) = happyShift action_8
action_71 (28) = happyShift action_9
action_71 (30) = happyShift action_10
action_71 (33) = happyShift action_11
action_71 (38) = happyShift action_12
action_71 (4) = happyGoto action_19
action_71 _ = happyReduce_18

action_72 (31) = happyShift action_73
action_72 _ = happyFail (happyExpListPerState 72)

action_73 _ = happyReduce_28

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyTerminal (TokenNum happy_var_1))
	 =  HappyAbsSyn4
		 (Num happy_var_1
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 _
	 =  HappyAbsSyn4
		 (BTrue
	)

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 _
	 =  HappyAbsSyn4
		 (BFalse
	)

happyReduce_4 = happySpecReduce_3  4 happyReduction_4
happyReduction_4 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Add happy_var_1 happy_var_3
	)
happyReduction_4 _ _ _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_3  4 happyReduction_5
happyReduction_5 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  4 happyReduction_6
happyReduction_6 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Mul happy_var_1 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  4 happyReduction_7
happyReduction_7 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Mod happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  4 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (And happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Or happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  4 happyReduction_10
happyReduction_10 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Xor happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  4 happyReduction_11
happyReduction_11 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Equal happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  4 happyReduction_12
happyReduction_12 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (NotEqual happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  4 happyReduction_13
happyReduction_13 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (LessThan happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  4 happyReduction_14
happyReduction_14 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (BiggerThan happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  4 happyReduction_15
happyReduction_15 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (LessEqual happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  4 happyReduction_16
happyReduction_16 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (BiggerEqual happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_2  4 happyReduction_17
happyReduction_17 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Not happy_var_2
	)
happyReduction_17 _ _  = notHappyAtAll 

happyReduce_18 = happyReduce 6 4 happyReduction_18
happyReduction_18 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_19 = happyReduce 5 4 happyReduction_19
happyReduction_19 ((HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (TernIf happy_var_1 happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_20 = happySpecReduce_1  4 happyReduction_20
happyReduction_20 (HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn4
		 (Var happy_var_1
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happyReduce 6 4 happyReduction_21
happyReduction_21 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Lam happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_22 = happySpecReduce_2  4 happyReduction_22
happyReduction_22 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (App happy_var_1 happy_var_2
	)
happyReduction_22 _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  4 happyReduction_23
happyReduction_23 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Paren happy_var_2
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happyReduce 6 4 happyReduction_24
happyReduction_24 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Let happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_25 = happyReduce 6 4 happyReduction_25
happyReduction_25 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (For happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_26 = happySpecReduce_1  5 happyReduction_26
happyReduction_26 _
	 =  HappyAbsSyn5
		 (TBool
	)

happyReduce_27 = happySpecReduce_1  5 happyReduction_27
happyReduction_27 _
	 =  HappyAbsSyn5
		 (TNum
	)

happyReduce_28 = happyReduce 5 5 happyReduction_28
happyReduction_28 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (TFun happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 41 41 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenNum happy_dollar_dollar -> cont 6;
	TokenAdd -> cont 7;
	TokenSub -> cont 8;
	TokenMul -> cont 9;
	TokenMod -> cont 10;
	TokenAnd -> cont 11;
	TokenOr -> cont 12;
	TokenXor -> cont 13;
	TokenEqual -> cont 14;
	TokenNotEqual -> cont 15;
	TokenLessThan -> cont 16;
	TokenBiggerThan -> cont 17;
	TokenLessEqual -> cont 18;
	TokenBiggerEqual -> cont 19;
	TokenNot -> cont 20;
	TokenTernIf -> cont 21;
	TokenTrue -> cont 22;
	TokenFalse -> cont 23;
	TokenIf -> cont 24;
	TokenThen -> cont 25;
	TokenElse -> cont 26;
	TokenVar happy_dollar_dollar -> cont 27;
	TokenLam -> cont 28;
	TokenArrow -> cont 29;
	TokenLParen -> cont 30;
	TokenRParen -> cont 31;
	TokenEq -> cont 32;
	TokenLet -> cont 33;
	TokenIn -> cont 34;
	TokenBoolean -> cont 35;
	TokenNumber -> cont 36;
	TokenColon -> cont 37;
	TokenFor -> cont 38;
	TokenTo -> cont 39;
	TokenDo -> cont 40;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 41 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Prelude.Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Prelude.Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (Prelude.>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (Prelude.return)
happyThen1 m k tks = (Prelude.>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (Prelude.return) a
happyError' :: () => ([(Token)], [Prelude.String]) -> HappyIdentity a
happyError' = HappyIdentity Prelude.. (\(tokens, _) -> parserError tokens)
parser tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parserError :: [Token] -> a 
parserError _ = error "Syntax error!"
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
