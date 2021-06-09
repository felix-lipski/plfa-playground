{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Data.Char.Base where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Char

name6 = "Data.Char.Base._≈_"
d6 ::
  MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.Code.Agda.Builtin.Char.T6 -> ()
d6 = erased
name8 = "Data.Char.Base._≉_"
d8 ::
  MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.Code.Agda.Builtin.Char.T6 -> ()
d8 = erased
name14 = "Data.Char.Base._≈ᵇ_"
d14 ::
  MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.Code.Agda.Builtin.Char.T6 -> Bool
d14 v0 v1
  = coe
      eqInt (coe MAlonzo.Code.Agda.Builtin.Char.d28 v0)
      (coe MAlonzo.Code.Agda.Builtin.Char.d28 v1)
name20 = "Data.Char.Base._<_"
d20 ::
  MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.Code.Agda.Builtin.Char.T6 -> ()
d20 = erased
name22 = "Data.Char.Base._≤_"
d22 ::
  MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.Code.Agda.Builtin.Char.T6 -> ()
d22 = erased
name24 = "Data.Char.Base.toNat"
d24 :: MAlonzo.Code.Agda.Builtin.Char.T6 -> Integer
d24 = coe MAlonzo.Code.Agda.Builtin.Char.d28
name26 = "Data.Char.Base.fromNat"
d26 :: Integer -> MAlonzo.Code.Agda.Builtin.Char.T6
d26 = coe MAlonzo.Code.Agda.Builtin.Char.d30
