{-# OPTIONS_GHC -w #-}
module Parser where

import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.11

data HappyAbsSyn t4 t5
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,224) ([32,4814,256,0,0,0,49152,40959,101,0,0,0,0,128,19256,0,0,0,16384,0,28673,150,0,16,0,4096,65024,27903,3,0,33024,32767,203,0,0,32,4814,256,38512,2048,45952,16388,39936,37,57346,300,16,2407,128,19256,1024,22976,8194,52736,18,28673,150,32776,1203,0,128,0,32768,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,52736,18,0,3088,0,0,64,9628,65024,11519,7,32768,0,0,1544,0,0,0,0,65280,38783,2049,45952,4,0,0,57346,300,0,128,128,19256,1024,22976,2,0,0,0,0,0,24704,0,0,0,16384,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","Type","num","'+'","'-'","'*'","\"&&\"","\"||\"","\"==\"","\"!=\"","'<'","'>'","\"<=\"","\">=\"","true","false","if","then","else","var","'\\\\'","\"->\"","'('","')'","'='","let","where","in","Bool","Num","':'","%eof"]
        bit_start = st * 35
        bit_end = (st + 1) * 35
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..34]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (6) = happyShift action_2
action_0 (18) = happyShift action_4
action_0 (19) = happyShift action_5
action_0 (20) = happyShift action_6
action_0 (23) = happyShift action_7
action_0 (24) = happyShift action_8
action_0 (26) = happyShift action_9
action_0 (29) = happyShift action_10
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (6) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (6) = happyShift action_2
action_3 (7) = happyShift action_16
action_3 (8) = happyShift action_17
action_3 (9) = happyShift action_18
action_3 (10) = happyShift action_19
action_3 (11) = happyShift action_20
action_3 (12) = happyShift action_21
action_3 (13) = happyShift action_22
action_3 (14) = happyShift action_23
action_3 (15) = happyShift action_24
action_3 (16) = happyShift action_25
action_3 (17) = happyShift action_26
action_3 (18) = happyShift action_4
action_3 (19) = happyShift action_5
action_3 (20) = happyShift action_6
action_3 (23) = happyShift action_7
action_3 (24) = happyShift action_8
action_3 (26) = happyShift action_9
action_3 (29) = happyShift action_10
action_3 (30) = happyShift action_27
action_3 (35) = happyAccept
action_3 (4) = happyGoto action_15
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_2

action_5 _ = happyReduce_3

action_6 (6) = happyShift action_2
action_6 (18) = happyShift action_4
action_6 (19) = happyShift action_5
action_6 (20) = happyShift action_6
action_6 (23) = happyShift action_7
action_6 (24) = happyShift action_8
action_6 (26) = happyShift action_9
action_6 (29) = happyShift action_10
action_6 (4) = happyGoto action_14
action_6 _ = happyFail (happyExpListPerState 6)

action_7 _ = happyReduce_16

action_8 (23) = happyShift action_13
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (6) = happyShift action_2
action_9 (18) = happyShift action_4
action_9 (19) = happyShift action_5
action_9 (20) = happyShift action_6
action_9 (23) = happyShift action_7
action_9 (24) = happyShift action_8
action_9 (26) = happyShift action_9
action_9 (29) = happyShift action_10
action_9 (4) = happyGoto action_12
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (23) = happyShift action_11
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (28) = happyShift action_43
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (6) = happyShift action_2
action_12 (7) = happyShift action_16
action_12 (8) = happyShift action_17
action_12 (9) = happyShift action_18
action_12 (10) = happyShift action_19
action_12 (11) = happyShift action_20
action_12 (12) = happyShift action_21
action_12 (13) = happyShift action_22
action_12 (14) = happyShift action_23
action_12 (15) = happyShift action_24
action_12 (16) = happyShift action_25
action_12 (17) = happyShift action_26
action_12 (18) = happyShift action_4
action_12 (19) = happyShift action_5
action_12 (20) = happyShift action_6
action_12 (23) = happyShift action_7
action_12 (24) = happyShift action_8
action_12 (26) = happyShift action_9
action_12 (27) = happyShift action_42
action_12 (29) = happyShift action_10
action_12 (30) = happyShift action_27
action_12 (4) = happyGoto action_15
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (34) = happyShift action_41
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (6) = happyShift action_2
action_14 (7) = happyShift action_16
action_14 (8) = happyShift action_17
action_14 (9) = happyShift action_18
action_14 (10) = happyShift action_19
action_14 (11) = happyShift action_20
action_14 (12) = happyShift action_21
action_14 (13) = happyShift action_22
action_14 (14) = happyShift action_23
action_14 (15) = happyShift action_24
action_14 (16) = happyShift action_25
action_14 (17) = happyShift action_26
action_14 (18) = happyShift action_4
action_14 (19) = happyShift action_5
action_14 (20) = happyShift action_6
action_14 (21) = happyShift action_40
action_14 (23) = happyShift action_7
action_14 (24) = happyShift action_8
action_14 (26) = happyShift action_9
action_14 (29) = happyShift action_10
action_14 (30) = happyShift action_27
action_14 (4) = happyGoto action_15
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (6) = happyShift action_2
action_15 (7) = happyShift action_16
action_15 (8) = happyShift action_17
action_15 (9) = happyShift action_18
action_15 (10) = happyShift action_19
action_15 (11) = happyShift action_20
action_15 (12) = happyShift action_21
action_15 (13) = happyShift action_22
action_15 (14) = happyShift action_23
action_15 (15) = happyShift action_24
action_15 (16) = happyShift action_25
action_15 (17) = happyShift action_26
action_15 (18) = happyShift action_4
action_15 (19) = happyShift action_5
action_15 (20) = happyShift action_6
action_15 (23) = happyShift action_7
action_15 (24) = happyShift action_8
action_15 (26) = happyShift action_9
action_15 (29) = happyShift action_10
action_15 (30) = happyShift action_27
action_15 (4) = happyGoto action_15
action_15 _ = happyReduce_18

action_16 (6) = happyShift action_2
action_16 (18) = happyShift action_4
action_16 (19) = happyShift action_5
action_16 (20) = happyShift action_6
action_16 (23) = happyShift action_7
action_16 (24) = happyShift action_8
action_16 (26) = happyShift action_9
action_16 (29) = happyShift action_10
action_16 (4) = happyGoto action_39
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (6) = happyShift action_2
action_17 (18) = happyShift action_4
action_17 (19) = happyShift action_5
action_17 (20) = happyShift action_6
action_17 (23) = happyShift action_7
action_17 (24) = happyShift action_8
action_17 (26) = happyShift action_9
action_17 (29) = happyShift action_10
action_17 (4) = happyGoto action_38
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (6) = happyShift action_2
action_18 (18) = happyShift action_4
action_18 (19) = happyShift action_5
action_18 (20) = happyShift action_6
action_18 (23) = happyShift action_7
action_18 (24) = happyShift action_8
action_18 (26) = happyShift action_9
action_18 (29) = happyShift action_10
action_18 (4) = happyGoto action_37
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (6) = happyShift action_2
action_19 (18) = happyShift action_4
action_19 (19) = happyShift action_5
action_19 (20) = happyShift action_6
action_19 (23) = happyShift action_7
action_19 (24) = happyShift action_8
action_19 (26) = happyShift action_9
action_19 (29) = happyShift action_10
action_19 (4) = happyGoto action_36
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (6) = happyShift action_2
action_20 (18) = happyShift action_4
action_20 (19) = happyShift action_5
action_20 (20) = happyShift action_6
action_20 (23) = happyShift action_7
action_20 (24) = happyShift action_8
action_20 (26) = happyShift action_9
action_20 (29) = happyShift action_10
action_20 (4) = happyGoto action_35
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (6) = happyShift action_2
action_21 (18) = happyShift action_4
action_21 (19) = happyShift action_5
action_21 (20) = happyShift action_6
action_21 (23) = happyShift action_7
action_21 (24) = happyShift action_8
action_21 (26) = happyShift action_9
action_21 (29) = happyShift action_10
action_21 (4) = happyGoto action_34
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (6) = happyShift action_2
action_22 (18) = happyShift action_4
action_22 (19) = happyShift action_5
action_22 (20) = happyShift action_6
action_22 (23) = happyShift action_7
action_22 (24) = happyShift action_8
action_22 (26) = happyShift action_9
action_22 (29) = happyShift action_10
action_22 (4) = happyGoto action_33
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (6) = happyShift action_2
action_23 (18) = happyShift action_4
action_23 (19) = happyShift action_5
action_23 (20) = happyShift action_6
action_23 (23) = happyShift action_7
action_23 (24) = happyShift action_8
action_23 (26) = happyShift action_9
action_23 (29) = happyShift action_10
action_23 (4) = happyGoto action_32
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (6) = happyShift action_2
action_24 (18) = happyShift action_4
action_24 (19) = happyShift action_5
action_24 (20) = happyShift action_6
action_24 (23) = happyShift action_7
action_24 (24) = happyShift action_8
action_24 (26) = happyShift action_9
action_24 (29) = happyShift action_10
action_24 (4) = happyGoto action_31
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (6) = happyShift action_2
action_25 (18) = happyShift action_4
action_25 (19) = happyShift action_5
action_25 (20) = happyShift action_6
action_25 (23) = happyShift action_7
action_25 (24) = happyShift action_8
action_25 (26) = happyShift action_9
action_25 (29) = happyShift action_10
action_25 (4) = happyGoto action_30
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (6) = happyShift action_2
action_26 (18) = happyShift action_4
action_26 (19) = happyShift action_5
action_26 (20) = happyShift action_6
action_26 (23) = happyShift action_7
action_26 (24) = happyShift action_8
action_26 (26) = happyShift action_9
action_26 (29) = happyShift action_10
action_26 (4) = happyGoto action_29
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (23) = happyShift action_28
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (28) = happyShift action_50
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (6) = happyShift action_2
action_29 (7) = happyShift action_16
action_29 (8) = happyShift action_17
action_29 (9) = happyShift action_18
action_29 (10) = happyShift action_19
action_29 (11) = happyShift action_20
action_29 (12) = happyShift action_21
action_29 (13) = happyShift action_22
action_29 (14) = happyShift action_23
action_29 (15) = happyShift action_24
action_29 (16) = happyShift action_25
action_29 (17) = happyShift action_26
action_29 (18) = happyShift action_4
action_29 (19) = happyShift action_5
action_29 (20) = happyShift action_6
action_29 (23) = happyShift action_7
action_29 (24) = happyShift action_8
action_29 (26) = happyShift action_9
action_29 (29) = happyShift action_10
action_29 (30) = happyShift action_27
action_29 (4) = happyGoto action_15
action_29 _ = happyReduce_14

action_30 (6) = happyShift action_2
action_30 (7) = happyShift action_16
action_30 (8) = happyShift action_17
action_30 (9) = happyShift action_18
action_30 (10) = happyShift action_19
action_30 (11) = happyShift action_20
action_30 (12) = happyShift action_21
action_30 (13) = happyShift action_22
action_30 (14) = happyShift action_23
action_30 (15) = happyShift action_24
action_30 (16) = happyShift action_25
action_30 (17) = happyShift action_26
action_30 (18) = happyShift action_4
action_30 (19) = happyShift action_5
action_30 (20) = happyShift action_6
action_30 (23) = happyShift action_7
action_30 (24) = happyShift action_8
action_30 (26) = happyShift action_9
action_30 (29) = happyShift action_10
action_30 (30) = happyShift action_27
action_30 (4) = happyGoto action_15
action_30 _ = happyReduce_13

action_31 (6) = happyShift action_2
action_31 (7) = happyShift action_16
action_31 (8) = happyShift action_17
action_31 (9) = happyShift action_18
action_31 (10) = happyShift action_19
action_31 (11) = happyShift action_20
action_31 (12) = happyShift action_21
action_31 (13) = happyShift action_22
action_31 (14) = happyShift action_23
action_31 (15) = happyShift action_24
action_31 (16) = happyShift action_25
action_31 (17) = happyShift action_26
action_31 (18) = happyShift action_4
action_31 (19) = happyShift action_5
action_31 (20) = happyShift action_6
action_31 (23) = happyShift action_7
action_31 (24) = happyShift action_8
action_31 (26) = happyShift action_9
action_31 (29) = happyShift action_10
action_31 (30) = happyShift action_27
action_31 (4) = happyGoto action_15
action_31 _ = happyReduce_12

action_32 (6) = happyShift action_2
action_32 (7) = happyShift action_16
action_32 (8) = happyShift action_17
action_32 (9) = happyShift action_18
action_32 (10) = happyShift action_19
action_32 (11) = happyShift action_20
action_32 (12) = happyShift action_21
action_32 (13) = happyShift action_22
action_32 (14) = happyShift action_23
action_32 (15) = happyShift action_24
action_32 (16) = happyShift action_25
action_32 (17) = happyShift action_26
action_32 (18) = happyShift action_4
action_32 (19) = happyShift action_5
action_32 (20) = happyShift action_6
action_32 (23) = happyShift action_7
action_32 (24) = happyShift action_8
action_32 (26) = happyShift action_9
action_32 (29) = happyShift action_10
action_32 (30) = happyShift action_27
action_32 (4) = happyGoto action_15
action_32 _ = happyReduce_11

action_33 (6) = happyShift action_2
action_33 (7) = happyShift action_16
action_33 (8) = happyShift action_17
action_33 (9) = happyShift action_18
action_33 (10) = happyShift action_19
action_33 (11) = happyShift action_20
action_33 (12) = happyShift action_21
action_33 (13) = happyShift action_22
action_33 (14) = happyShift action_23
action_33 (15) = happyShift action_24
action_33 (16) = happyShift action_25
action_33 (17) = happyShift action_26
action_33 (18) = happyShift action_4
action_33 (19) = happyShift action_5
action_33 (20) = happyShift action_6
action_33 (23) = happyShift action_7
action_33 (24) = happyShift action_8
action_33 (26) = happyShift action_9
action_33 (29) = happyShift action_10
action_33 (30) = happyShift action_27
action_33 (4) = happyGoto action_15
action_33 _ = happyReduce_10

action_34 (6) = happyShift action_2
action_34 (7) = happyShift action_16
action_34 (8) = happyShift action_17
action_34 (9) = happyShift action_18
action_34 (10) = happyShift action_19
action_34 (11) = happyShift action_20
action_34 (12) = happyShift action_21
action_34 (13) = happyShift action_22
action_34 (14) = happyShift action_23
action_34 (15) = happyShift action_24
action_34 (16) = happyShift action_25
action_34 (17) = happyShift action_26
action_34 (18) = happyShift action_4
action_34 (19) = happyShift action_5
action_34 (20) = happyShift action_6
action_34 (23) = happyShift action_7
action_34 (24) = happyShift action_8
action_34 (26) = happyShift action_9
action_34 (29) = happyShift action_10
action_34 (30) = happyShift action_27
action_34 (4) = happyGoto action_15
action_34 _ = happyReduce_9

action_35 (6) = happyShift action_2
action_35 (7) = happyShift action_16
action_35 (8) = happyShift action_17
action_35 (9) = happyShift action_18
action_35 (10) = happyShift action_19
action_35 (11) = happyShift action_20
action_35 (12) = happyShift action_21
action_35 (13) = happyShift action_22
action_35 (14) = happyShift action_23
action_35 (15) = happyShift action_24
action_35 (16) = happyShift action_25
action_35 (17) = happyShift action_26
action_35 (18) = happyShift action_4
action_35 (19) = happyShift action_5
action_35 (20) = happyShift action_6
action_35 (23) = happyShift action_7
action_35 (24) = happyShift action_8
action_35 (26) = happyShift action_9
action_35 (29) = happyShift action_10
action_35 (30) = happyShift action_27
action_35 (4) = happyGoto action_15
action_35 _ = happyReduce_8

action_36 (6) = happyShift action_2
action_36 (7) = happyShift action_16
action_36 (8) = happyShift action_17
action_36 (9) = happyShift action_18
action_36 (10) = happyShift action_19
action_36 (11) = happyShift action_20
action_36 (12) = happyShift action_21
action_36 (13) = happyShift action_22
action_36 (14) = happyShift action_23
action_36 (15) = happyShift action_24
action_36 (16) = happyShift action_25
action_36 (17) = happyShift action_26
action_36 (18) = happyShift action_4
action_36 (19) = happyShift action_5
action_36 (20) = happyShift action_6
action_36 (23) = happyShift action_7
action_36 (24) = happyShift action_8
action_36 (26) = happyShift action_9
action_36 (29) = happyShift action_10
action_36 (30) = happyShift action_27
action_36 (4) = happyGoto action_15
action_36 _ = happyReduce_7

action_37 (6) = happyShift action_2
action_37 (7) = happyShift action_16
action_37 (8) = happyShift action_17
action_37 (9) = happyShift action_18
action_37 (10) = happyShift action_19
action_37 (11) = happyShift action_20
action_37 (12) = happyShift action_21
action_37 (13) = happyShift action_22
action_37 (14) = happyShift action_23
action_37 (15) = happyShift action_24
action_37 (16) = happyShift action_25
action_37 (17) = happyShift action_26
action_37 (18) = happyShift action_4
action_37 (19) = happyShift action_5
action_37 (20) = happyShift action_6
action_37 (23) = happyShift action_7
action_37 (24) = happyShift action_8
action_37 (26) = happyShift action_9
action_37 (29) = happyShift action_10
action_37 (30) = happyShift action_27
action_37 (4) = happyGoto action_15
action_37 _ = happyReduce_6

action_38 (6) = happyShift action_2
action_38 (7) = happyShift action_16
action_38 (8) = happyShift action_17
action_38 (9) = happyShift action_18
action_38 (10) = happyShift action_19
action_38 (11) = happyShift action_20
action_38 (12) = happyShift action_21
action_38 (13) = happyShift action_22
action_38 (14) = happyShift action_23
action_38 (15) = happyShift action_24
action_38 (16) = happyShift action_25
action_38 (17) = happyShift action_26
action_38 (18) = happyShift action_4
action_38 (19) = happyShift action_5
action_38 (20) = happyShift action_6
action_38 (23) = happyShift action_7
action_38 (24) = happyShift action_8
action_38 (26) = happyShift action_9
action_38 (29) = happyShift action_10
action_38 (30) = happyShift action_27
action_38 (4) = happyGoto action_15
action_38 _ = happyReduce_5

action_39 (6) = happyShift action_2
action_39 (8) = happyShift action_17
action_39 (9) = happyShift action_18
action_39 (10) = happyShift action_19
action_39 (11) = happyShift action_20
action_39 (12) = happyShift action_21
action_39 (13) = happyShift action_22
action_39 (14) = happyShift action_23
action_39 (15) = happyShift action_24
action_39 (16) = happyShift action_25
action_39 (17) = happyShift action_26
action_39 (18) = happyShift action_4
action_39 (19) = happyShift action_5
action_39 (20) = happyShift action_6
action_39 (23) = happyShift action_7
action_39 (24) = happyShift action_8
action_39 (26) = happyShift action_9
action_39 (29) = happyShift action_10
action_39 (4) = happyGoto action_15
action_39 _ = happyReduce_4

action_40 (6) = happyShift action_2
action_40 (18) = happyShift action_4
action_40 (19) = happyShift action_5
action_40 (20) = happyShift action_6
action_40 (23) = happyShift action_7
action_40 (24) = happyShift action_8
action_40 (26) = happyShift action_9
action_40 (29) = happyShift action_10
action_40 (4) = happyGoto action_49
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (26) = happyShift action_46
action_41 (32) = happyShift action_47
action_41 (33) = happyShift action_48
action_41 (5) = happyGoto action_45
action_41 _ = happyFail (happyExpListPerState 41)

action_42 _ = happyReduce_19

action_43 (6) = happyShift action_2
action_43 (18) = happyShift action_4
action_43 (19) = happyShift action_5
action_43 (20) = happyShift action_6
action_43 (23) = happyShift action_7
action_43 (24) = happyShift action_8
action_43 (26) = happyShift action_9
action_43 (29) = happyShift action_10
action_43 (4) = happyGoto action_44
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (6) = happyShift action_2
action_44 (7) = happyShift action_16
action_44 (8) = happyShift action_17
action_44 (9) = happyShift action_18
action_44 (10) = happyShift action_19
action_44 (11) = happyShift action_20
action_44 (12) = happyShift action_21
action_44 (13) = happyShift action_22
action_44 (14) = happyShift action_23
action_44 (15) = happyShift action_24
action_44 (16) = happyShift action_25
action_44 (17) = happyShift action_26
action_44 (18) = happyShift action_4
action_44 (19) = happyShift action_5
action_44 (20) = happyShift action_6
action_44 (23) = happyShift action_7
action_44 (24) = happyShift action_8
action_44 (26) = happyShift action_9
action_44 (29) = happyShift action_10
action_44 (30) = happyShift action_27
action_44 (31) = happyShift action_55
action_44 (4) = happyGoto action_15
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (25) = happyShift action_54
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (26) = happyShift action_46
action_46 (32) = happyShift action_47
action_46 (33) = happyShift action_48
action_46 (5) = happyGoto action_53
action_46 _ = happyFail (happyExpListPerState 46)

action_47 _ = happyReduce_22

action_48 _ = happyReduce_23

action_49 (6) = happyShift action_2
action_49 (7) = happyShift action_16
action_49 (8) = happyShift action_17
action_49 (9) = happyShift action_18
action_49 (10) = happyShift action_19
action_49 (11) = happyShift action_20
action_49 (12) = happyShift action_21
action_49 (13) = happyShift action_22
action_49 (14) = happyShift action_23
action_49 (15) = happyShift action_24
action_49 (16) = happyShift action_25
action_49 (17) = happyShift action_26
action_49 (18) = happyShift action_4
action_49 (19) = happyShift action_5
action_49 (20) = happyShift action_6
action_49 (22) = happyShift action_52
action_49 (23) = happyShift action_7
action_49 (24) = happyShift action_8
action_49 (26) = happyShift action_9
action_49 (29) = happyShift action_10
action_49 (30) = happyShift action_27
action_49 (4) = happyGoto action_15
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (6) = happyShift action_2
action_50 (18) = happyShift action_4
action_50 (19) = happyShift action_5
action_50 (20) = happyShift action_6
action_50 (23) = happyShift action_7
action_50 (24) = happyShift action_8
action_50 (26) = happyShift action_9
action_50 (29) = happyShift action_10
action_50 (4) = happyGoto action_51
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (6) = happyShift action_2
action_51 (7) = happyShift action_16
action_51 (8) = happyShift action_17
action_51 (9) = happyShift action_18
action_51 (10) = happyShift action_19
action_51 (11) = happyShift action_20
action_51 (12) = happyShift action_21
action_51 (13) = happyShift action_22
action_51 (14) = happyShift action_23
action_51 (15) = happyShift action_24
action_51 (16) = happyShift action_25
action_51 (17) = happyShift action_26
action_51 (18) = happyShift action_4
action_51 (19) = happyShift action_5
action_51 (20) = happyShift action_6
action_51 (23) = happyShift action_7
action_51 (24) = happyShift action_8
action_51 (26) = happyShift action_9
action_51 (29) = happyShift action_10
action_51 (30) = happyShift action_27
action_51 (4) = happyGoto action_15
action_51 _ = happyReduce_21

action_52 (6) = happyShift action_2
action_52 (18) = happyShift action_4
action_52 (19) = happyShift action_5
action_52 (20) = happyShift action_6
action_52 (23) = happyShift action_7
action_52 (24) = happyShift action_8
action_52 (26) = happyShift action_9
action_52 (29) = happyShift action_10
action_52 (4) = happyGoto action_59
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (25) = happyShift action_58
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (6) = happyShift action_2
action_54 (18) = happyShift action_4
action_54 (19) = happyShift action_5
action_54 (20) = happyShift action_6
action_54 (23) = happyShift action_7
action_54 (24) = happyShift action_8
action_54 (26) = happyShift action_9
action_54 (29) = happyShift action_10
action_54 (4) = happyGoto action_57
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (6) = happyShift action_2
action_55 (18) = happyShift action_4
action_55 (19) = happyShift action_5
action_55 (20) = happyShift action_6
action_55 (23) = happyShift action_7
action_55 (24) = happyShift action_8
action_55 (26) = happyShift action_9
action_55 (29) = happyShift action_10
action_55 (4) = happyGoto action_56
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (6) = happyShift action_2
action_56 (7) = happyShift action_16
action_56 (8) = happyShift action_17
action_56 (9) = happyShift action_18
action_56 (10) = happyShift action_19
action_56 (11) = happyShift action_20
action_56 (12) = happyShift action_21
action_56 (13) = happyShift action_22
action_56 (14) = happyShift action_23
action_56 (15) = happyShift action_24
action_56 (16) = happyShift action_25
action_56 (17) = happyShift action_26
action_56 (18) = happyShift action_4
action_56 (19) = happyShift action_5
action_56 (20) = happyShift action_6
action_56 (23) = happyShift action_7
action_56 (24) = happyShift action_8
action_56 (26) = happyShift action_9
action_56 (29) = happyShift action_10
action_56 (30) = happyShift action_27
action_56 (4) = happyGoto action_15
action_56 _ = happyReduce_20

action_57 (6) = happyShift action_2
action_57 (7) = happyShift action_16
action_57 (8) = happyShift action_17
action_57 (9) = happyShift action_18
action_57 (10) = happyShift action_19
action_57 (11) = happyShift action_20
action_57 (12) = happyShift action_21
action_57 (13) = happyShift action_22
action_57 (14) = happyShift action_23
action_57 (15) = happyShift action_24
action_57 (16) = happyShift action_25
action_57 (17) = happyShift action_26
action_57 (18) = happyShift action_4
action_57 (19) = happyShift action_5
action_57 (20) = happyShift action_6
action_57 (23) = happyShift action_7
action_57 (24) = happyShift action_8
action_57 (26) = happyShift action_9
action_57 (29) = happyShift action_10
action_57 (30) = happyShift action_27
action_57 (4) = happyGoto action_15
action_57 _ = happyReduce_17

action_58 (26) = happyShift action_46
action_58 (32) = happyShift action_47
action_58 (33) = happyShift action_48
action_58 (5) = happyGoto action_60
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (6) = happyShift action_2
action_59 (7) = happyShift action_16
action_59 (8) = happyShift action_17
action_59 (9) = happyShift action_18
action_59 (10) = happyShift action_19
action_59 (11) = happyShift action_20
action_59 (12) = happyShift action_21
action_59 (13) = happyShift action_22
action_59 (14) = happyShift action_23
action_59 (15) = happyShift action_24
action_59 (16) = happyShift action_25
action_59 (17) = happyShift action_26
action_59 (18) = happyShift action_4
action_59 (19) = happyShift action_5
action_59 (20) = happyShift action_6
action_59 (23) = happyShift action_7
action_59 (24) = happyShift action_8
action_59 (26) = happyShift action_9
action_59 (29) = happyShift action_10
action_59 (30) = happyShift action_27
action_59 (4) = happyGoto action_15
action_59 _ = happyReduce_15

action_60 (27) = happyShift action_61
action_60 _ = happyFail (happyExpListPerState 60)

action_61 _ = happyReduce_24

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
		 (Mult happy_var_1 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  4 happyReduction_7
happyReduction_7 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (And happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  4 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Or happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Equals happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  4 happyReduction_10
happyReduction_10 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (NotEq happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  4 happyReduction_11
happyReduction_11 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Smaller happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  4 happyReduction_12
happyReduction_12 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Greater happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  4 happyReduction_13
happyReduction_13 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (SmallerEq happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  4 happyReduction_14
happyReduction_14 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (GreaterEq happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happyReduce 6 4 happyReduction_15
happyReduction_15 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_16 = happySpecReduce_1  4 happyReduction_16
happyReduction_16 (HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn4
		 (Var happy_var_1
	)
happyReduction_16 _  = notHappyAtAll 

happyReduce_17 = happyReduce 6 4 happyReduction_17
happyReduction_17 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Lam happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_18 = happySpecReduce_2  4 happyReduction_18
happyReduction_18 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (App happy_var_1 happy_var_2
	)
happyReduction_18 _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  4 happyReduction_19
happyReduction_19 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Paren happy_var_2
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happyReduce 6 4 happyReduction_20
happyReduction_20 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Let happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_21 = happyReduce 5 4 happyReduction_21
happyReduction_21 ((HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_3)) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Where happy_var_1 happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_22 = happySpecReduce_1  5 happyReduction_22
happyReduction_22 _
	 =  HappyAbsSyn5
		 (TBool
	)

happyReduce_23 = happySpecReduce_1  5 happyReduction_23
happyReduction_23 _
	 =  HappyAbsSyn5
		 (TNum
	)

happyReduce_24 = happyReduce 5 5 happyReduction_24
happyReduction_24 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (TFun happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 35 35 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenNum happy_dollar_dollar -> cont 6;
	TokenAdd -> cont 7;
	TokenSub -> cont 8;
	TokenMult -> cont 9;
	TokenAnd -> cont 10;
	TokenOr -> cont 11;
	TokenEquals -> cont 12;
	TokenNotEq -> cont 13;
	TokenSmaller -> cont 14;
	TokenGreater -> cont 15;
	TokenSmallerEq -> cont 16;
	TokenGreaterEq -> cont 17;
	TokenTrue -> cont 18;
	TokenFalse -> cont 19;
	TokenIf -> cont 20;
	TokenThen -> cont 21;
	TokenElse -> cont 22;
	TokenVar happy_dollar_dollar -> cont 23;
	TokenLam -> cont 24;
	TokenArrow -> cont 25;
	TokenLParen -> cont 26;
	TokenRParen -> cont 27;
	TokenEq -> cont 28;
	TokenLet -> cont 29;
	TokenWhere -> cont 30;
	TokenIn -> cont 31;
	TokenBoolean -> cont 32;
	TokenNumber -> cont 33;
	TokenColon -> cont 34;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 35 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [String]) -> HappyIdentity a
happyError' = HappyIdentity . (\(tokens, _) -> parserError tokens)
parser tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parserError :: [Token] -> a 
parserError _ = error "Syntax error!"
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}







# 1 "/usr/include/stdc-predef.h" 1 3 4

# 17 "/usr/include/stdc-predef.h" 3 4











































{-# LINE 7 "<command-line>" #-}
{-# LINE 1 "/usr/lib/ghc/include/ghcversion.h" #-}















{-# LINE 7 "<command-line>" #-}
{-# LINE 1 "/tmp/ghc8336_0/ghc_2.h" #-}
































































































































































































{-# LINE 7 "<command-line>" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 









{-# LINE 43 "templates/GenericTemplate.hs" #-}

data Happy_IntList = HappyCons Int Happy_IntList







{-# LINE 65 "templates/GenericTemplate.hs" #-}

{-# LINE 75 "templates/GenericTemplate.hs" #-}

{-# LINE 84 "templates/GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action

{-# LINE 137 "templates/GenericTemplate.hs" #-}

{-# LINE 147 "templates/GenericTemplate.hs" #-}
indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x < y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `div` 16)) (bit `mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
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
     = case happyDrop (k - ((1) :: Int)) sts of
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





             _ = nt :: Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction

{-# LINE 267 "templates/GenericTemplate.hs" #-}
happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.

{-# LINE 333 "templates/GenericTemplate.hs" #-}
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
