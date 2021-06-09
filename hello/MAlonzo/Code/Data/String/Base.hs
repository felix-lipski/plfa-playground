{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Data.String.Base where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Char
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Nat
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.NonEmpty.Base
import qualified MAlonzo.Code.Data.Nat.Base

name6 = "Data.String.Base._≈_"
d6 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6 -> ()
d6 = erased
name8 = "Data.String.Base._<_"
d8 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6 -> ()
d8 = erased
name10 = "Data.String.Base._≤_"
d10 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6 -> ()
d10 = erased
name12 = "Data.String.Base.fromChar"
d12 ::
  MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6
d12 v0
  = coe
      MAlonzo.Code.Agda.Builtin.String.d10
      (coe
         MAlonzo.Code.Agda.Builtin.List.C22 (coe v0)
         (coe MAlonzo.Code.Agda.Builtin.List.C16))
name14 = "Data.String.Base.fromList⁺"
d14 ::
  MAlonzo.Code.Data.List.NonEmpty.Base.T24 ->
  MAlonzo.Code.Agda.Builtin.String.T6
d14 v0
  = coe
      MAlonzo.Code.Agda.Builtin.String.d10
      (coe MAlonzo.Code.Data.List.NonEmpty.Base.du62 (coe v0))
name16 = "Data.String.Base._++_"
d16 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6
d16 = coe MAlonzo.Code.Agda.Builtin.String.d12
name18 = "Data.String.Base.length"
d18 :: MAlonzo.Code.Agda.Builtin.String.T6 -> Integer
d18 v0
  = coe
      MAlonzo.Code.Data.List.Base.du296
      (coe MAlonzo.Code.Agda.Builtin.String.d8 v0)
name20 = "Data.String.Base.replicate"
d20 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6
d20 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.String.d10
      (coe MAlonzo.Code.Data.List.Base.du306 (coe v0) (coe v1))
name24 = "Data.String.Base.concat"
d24 ::
  [MAlonzo.Code.Agda.Builtin.String.T6] ->
  MAlonzo.Code.Agda.Builtin.String.T6
d24
  = coe
      MAlonzo.Code.Data.List.Base.du240 (coe d16)
      (coe (Data.Text.pack ""))
name26 = "Data.String.Base.intersperse"
d26 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  [MAlonzo.Code.Agda.Builtin.String.T6] ->
  MAlonzo.Code.Agda.Builtin.String.T6
d26 v0 v1
  = coe d24 (coe MAlonzo.Code.Data.List.Base.du70 (coe v0) (coe v1))
name30 = "Data.String.Base.unwords"
d30 ::
  [MAlonzo.Code.Agda.Builtin.String.T6] ->
  MAlonzo.Code.Agda.Builtin.String.T6
d30 = coe d26 (coe (Data.Text.pack " "))
name32 = "Data.String.Base.unlines"
d32 ::
  [MAlonzo.Code.Agda.Builtin.String.T6] ->
  MAlonzo.Code.Agda.Builtin.String.T6
d32 = coe d26 (coe (Data.Text.pack "\n"))
name34 = "Data.String.Base.parens"
d34 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6
d34 v0
  = coe d16 (Data.Text.pack "(") (coe d16 v0 (Data.Text.pack ")"))
name38 = "Data.String.Base.braces"
d38 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6
d38 v0
  = coe d16 (Data.Text.pack "{") (coe d16 v0 (Data.Text.pack "}"))
name42 = "Data.String.Base._<+>_"
d42 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6
d42 v0 v1
  = let v2
          = let v2 = coe d16 v0 (coe d16 (Data.Text.pack " ") v1) in
            case coe v1 of
              l | (==) l (Data.Text.pack "") -> coe v0
              _ -> coe v2 in
    case coe v0 of
      l | (==) l (Data.Text.pack "") -> coe v1
      _ -> coe v2
name52 = "Data.String.Base.padLeft"
d52 ::
  MAlonzo.Code.Agda.Builtin.Char.T6 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6
d52 v0 v1 v2
  = let v3
          = coe MAlonzo.Code.Agda.Builtin.Nat.d22 v1 (d18 (coe v2)) in
    let v4 = coe d16 (d20 (coe v3) (coe v0)) v2 in
    case coe v3 of
      0 -> coe v2
      _ -> coe v4
name78 = "Data.String.Base.padRight"
d78 ::
  MAlonzo.Code.Agda.Builtin.Char.T6 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6
d78 v0 v1 v2
  = let v3
          = coe MAlonzo.Code.Agda.Builtin.Nat.d22 v1 (d18 (coe v2)) in
    let v4 = coe d16 v2 (d20 (coe v3) (coe v0)) in
    case coe v3 of
      0 -> coe v2
      _ -> coe v4
name104 = "Data.String.Base.padBoth"
d104 ::
  MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.Code.Agda.Builtin.Char.T6 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6
d104 v0 v1 v2 v3
  = let v4
          = coe MAlonzo.Code.Agda.Builtin.Nat.d22 v2 (d18 (coe v3)) in
    let v5
          = coe
              d16 (d20 (coe MAlonzo.Code.Data.Nat.Base.d126 (coe v4)) (coe v0))
              (coe
                 d16 v3
                 (d20 (coe MAlonzo.Code.Data.Nat.Base.d130 (coe v4)) (coe v1))) in
    case coe v4 of
      0 -> coe v3
      _ -> coe v5
name136 = "Data.String.Base.Alignment"
d136 = ()
data T136 = C138 | C140 | C142
name144 = "Data.String.Base.fromAlignment"
d144 ::
  T136 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6
d144 v0
  = case coe v0 of
      C138 -> coe d78 (coe ' ')
      C140 -> coe d104 (coe ' ') (coe ' ')
      C142 -> coe d52 (coe ' ')
      _ -> MAlonzo.RTE.mazUnreachableError
