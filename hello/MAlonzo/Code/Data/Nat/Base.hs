{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Data.Nat.Base where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Nat
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Data.Empty

name10 = "Data.Nat.Base._≤ᵇ_"
d10 :: Integer -> Integer -> Bool
d10 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Agda.Builtin.Bool.C10
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe ltInt (coe v2) (coe v1)
name18 = "Data.Nat.Base._≤_"
d18 a0 a1 = ()
data T18 = C22 | C30 T18
name32 = "Data.Nat.Base._<_"
d32 :: Integer -> Integer -> ()
d32 = erased
name38 = "Data.Nat.Base._≥_"
d38 :: Integer -> Integer -> ()
d38 = erased
name44 = "Data.Nat.Base._>_"
d44 :: Integer -> Integer -> ()
d44 = erased
name50 = "Data.Nat.Base._≰_"
d50 :: Integer -> Integer -> ()
d50 = erased
name56 = "Data.Nat.Base._≮_"
d56 :: Integer -> Integer -> ()
d56 = erased
name62 = "Data.Nat.Base._≱_"
d62 :: Integer -> Integer -> ()
d62 = erased
name68 = "Data.Nat.Base._≯_"
d68 :: Integer -> Integer -> ()
d68 = erased
name74 = "Data.Nat.Base.NonZero"
d74 :: Integer -> ()
d74 = erased
name80 = "Data.Nat.Base.≢-nonZero"
d80 ::
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T12 ->
   MAlonzo.Code.Data.Empty.T4) ->
  AgdaAny
d80 v0 v1
  = case coe v0 of
      0 -> coe v1 erased
      _ -> coe MAlonzo.Code.Agda.Builtin.Unit.C8
name90 = "Data.Nat.Base.>-nonZero"
d90 :: Integer -> T18 -> AgdaAny
d90 v0 v1 = du90 v1
du90 :: T18 -> AgdaAny
du90 v0 = coe seq (coe v0) (coe MAlonzo.Code.Agda.Builtin.Unit.C8)
name94 = "Data.Nat.Base.pred"
d94 :: Integer -> Integer
d94 v0 = coe MAlonzo.Code.Agda.Builtin.Nat.d22 v0 (1 :: Integer)
name98 = "Data.Nat.Base._+⋎_"
d98 :: Integer -> Integer -> Integer
d98 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe addInt (coe (1 :: Integer)) (coe d98 (coe v1) (coe v2))
name106 = "Data.Nat.Base._⊔_"
d106 :: Integer -> Integer -> Integer
d106 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe v0
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe addInt (coe (1 :: Integer)) (coe d106 (coe v2) (coe v3))
name116 = "Data.Nat.Base._⊓_"
d116 :: Integer -> Integer -> Integer
d116 v0 v1
  = case coe v0 of
      0 -> coe (0 :: Integer)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe (0 :: Integer)
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe addInt (coe (1 :: Integer)) (coe d116 (coe v2) (coe v3))
name126 = "Data.Nat.Base.⌊_/2⌋"
d126 :: Integer -> Integer
d126 v0
  = case coe v0 of
      0 -> coe (0 :: Integer)
      1 -> coe (0 :: Integer)
      _ -> let v1 = subInt (coe v0) (coe (2 :: Integer)) in
           coe addInt (coe (1 :: Integer)) (coe d126 (coe v1))
name130 = "Data.Nat.Base.⌈_/2⌉"
d130 :: Integer -> Integer
d130 v0 = coe d126 (coe addInt (coe (1 :: Integer)) (coe v0))
name134 = "Data.Nat.Base._^_"
d134 :: Integer -> Integer -> Integer
d134 v0 v1
  = case coe v1 of
      0 -> coe (1 :: Integer)
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           coe mulInt (coe v0) (coe d134 (coe v0) (coe v2))
name142 = "Data.Nat.Base.∣_-_∣"
d142 :: Integer -> Integer -> Integer
d142 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe v0
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe d142 (coe v2) (coe v3)
name154 = "Data.Nat.Base._≤′_"
d154 a0 a1 = ()
data T154 = C158 | C164 T154
name166 = "Data.Nat.Base._<′_"
d166 :: Integer -> Integer -> ()
d166 = erased
name172 = "Data.Nat.Base._≥′_"
d172 :: Integer -> Integer -> ()
d172 = erased
name178 = "Data.Nat.Base._>′_"
d178 :: Integer -> Integer -> ()
d178 = erased
name188 = "Data.Nat.Base._≤″_"
d188 a0 a1 = ()
newtype T188 = C202 Integer
name198 = "Data.Nat.Base._≤″_.k"
d198 :: T188 -> Integer
d198 v0
  = case coe v0 of
      C202 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name200 = "Data.Nat.Base._≤″_.proof"
d200 :: T188 -> MAlonzo.Code.Agda.Builtin.Equality.T12
d200 = erased
name204 = "Data.Nat.Base._<″_"
d204 :: Integer -> Integer -> ()
d204 = erased
name210 = "Data.Nat.Base._≥″_"
d210 :: Integer -> Integer -> ()
d210 = erased
name216 = "Data.Nat.Base._>″_"
d216 :: Integer -> Integer -> ()
d216 = erased
name222 = "Data.Nat.Base._≤‴_"
d222 a0 a1 = ()
data T222 = C226 | C232 T222
name234 = "Data.Nat.Base._<‴_"
d234 :: Integer -> Integer -> ()
d234 = erased
name240 = "Data.Nat.Base._≥‴_"
d240 :: Integer -> Integer -> ()
d240 = erased
name246 = "Data.Nat.Base._>‴_"
d246 :: Integer -> Integer -> ()
d246 = erased
name252 = "Data.Nat.Base.Ordering"
d252 a0 a1 = ()
data T252 = C258 Integer | C262 | C268 Integer
name274 = "Data.Nat.Base.compare"
d274 :: Integer -> Integer -> T252
d274 v0 v1
  = case coe v0 of
      0 -> case coe v1 of
             0 -> coe C262
             _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in coe C258 v2
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe C268 v2
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe d274 (coe v2) (coe v3)
