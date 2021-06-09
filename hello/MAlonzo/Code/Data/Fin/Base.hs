{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Data.Fin.Base where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Nat
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Data.Sum.Base

name6 = "Data.Fin.Base.Fin"
d6 a0 = ()
data T6 = C10 | C16 T6
name20 = "Data.Fin.Base.toℕ"
d20 :: Integer -> T6 -> Integer
d20 v0 v1 = du20 v1
du20 :: T6 -> Integer
du20 v0
  = case coe v0 of
      C10 -> coe (0 :: Integer)
      C16 v2 -> coe addInt (coe (1 :: Integer)) (coe du20 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
name26 = "Data.Fin.Base.Fin′"
d26 :: Integer -> T6 -> ()
d26 = erased
name36 = "Data.Fin.Base.cast"
d36 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> T6 -> T6
d36 v0 v1 v2 v3 = du36 v0 v3
du36 :: Integer -> T6 -> T6
du36 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> case coe v1 of
             C10 -> coe C10
             C16 v3
               -> coe
                    C16
                    (coe
                       du36 (coe MAlonzo.Code.Agda.Builtin.Nat.d22 v0 (1 :: Integer))
                       (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
name58 = "Data.Fin.Base.fromℕ"
d58 :: Integer -> T6
d58 v0
  = case coe v0 of
      0 -> coe C10
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe C16 (d58 (coe v1))
name66 = "Data.Fin.Base.fromℕ<"
d66 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T18 -> T6
d66 v0 v1 v2 = du66 v0
du66 :: Integer -> T6
du66 v0
  = case coe v0 of
      0 -> coe C10
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe C16 (coe du66 (coe v1))
name82 = "Data.Fin.Base.fromℕ<″"
d82 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T188 -> T6
d82 v0 v1 v2 = du82 v0 v2
du82 :: Integer -> MAlonzo.Code.Data.Nat.Base.T188 -> T6
du82 v0 v1
  = case coe v0 of
      0 -> coe seq (coe v1) (coe C10)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             MAlonzo.Code.Data.Nat.Base.C202 v3
               -> coe
                    C16 (coe du82 (coe v2) (coe MAlonzo.Code.Data.Nat.Base.C202 v3))
             _ -> MAlonzo.RTE.mazUnreachableError
name90 = "Data.Fin.Base.raise"
d90 :: Integer -> Integer -> T6 -> T6
d90 v0 v1 v2 = du90 v1 v2
du90 :: Integer -> T6 -> T6
du90 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe C16 (coe du90 (coe v2) (coe v1))
name106 = "Data.Fin.Base.reduce≥"
d106 ::
  Integer -> Integer -> T6 -> MAlonzo.Code.Data.Nat.Base.T18 -> T6
d106 v0 v1 v2 v3 = du106 v0 v2 v3
du106 :: Integer -> T6 -> MAlonzo.Code.Data.Nat.Base.T18 -> T6
du106 v0 v1 v2
  = case coe v0 of
      0 -> coe v1
      _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             C16 v5
               -> case coe v2 of
                    MAlonzo.Code.Data.Nat.Base.C30 v8
                      -> coe du106 (coe v3) (coe v5) (coe v8)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
name122 = "Data.Fin.Base.inject"
d122 :: Integer -> T6 -> T6 -> T6
d122 v0 v1 v2 = du122 v1 v2
du122 :: T6 -> T6 -> T6
du122 v0 v1
  = case coe v0 of
      C16 v3
        -> case coe v1 of
             C10 -> coe C10
             C16 v5 -> coe C16 (coe du122 (coe v3) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name134 = "Data.Fin.Base.inject!"
d134 :: Integer -> T6 -> T6 -> T6
d134 v0 v1 v2 = du134 v1 v2
du134 :: T6 -> T6 -> T6
du134 v0 v1
  = case coe v0 of
      C16 v3
        -> case coe v1 of
             C10 -> coe C10
             C16 v5 -> coe C16 (coe du134 (coe v3) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name142 = "Data.Fin.Base.inject+"
d142 :: Integer -> Integer -> T6 -> T6
d142 v0 v1 v2 = du142 v2
du142 :: T6 -> T6
du142 v0 = coe v0
name152 = "Data.Fin.Base.inject₁"
d152 :: Integer -> T6 -> T6
d152 v0 v1 = du152 v1
du152 :: T6 -> T6
du152 v0 = coe v0
name160 = "Data.Fin.Base.inject≤"
d160 ::
  Integer -> Integer -> T6 -> MAlonzo.Code.Data.Nat.Base.T18 -> T6
d160 v0 v1 v2 v3 = du160 v2
du160 :: T6 -> T6
du160 v0 = coe v0
name176 = "Data.Fin.Base.lower₁"
d176 ::
  Integer ->
  T6 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T12 ->
   MAlonzo.Code.Data.Empty.T4) ->
  T6
d176 v0 v1 v2 = du176 v0 v1
du176 :: Integer -> T6 -> T6
du176 v0 v1
  = case coe v0 of
      0 -> coe
             seq (coe v1) (coe MAlonzo.Code.Data.Empty.d10 () erased erased)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             C10 -> coe C10
             C16 v4 -> coe C16 (coe du176 (coe v2) (coe v4))
             _ -> MAlonzo.RTE.mazUnreachableError
name194 = "Data.Fin.Base.strengthen"
d194 :: Integer -> T6 -> T6
d194 v0 v1 = du194 v1
du194 :: T6 -> T6
du194 v0 = coe v0
name202 = "Data.Fin.Base.splitAt"
d202 :: Integer -> Integer -> T6 -> MAlonzo.Code.Data.Sum.Base.T30
d202 v0 v1 v2 = du202 v0 v2
du202 :: Integer -> T6 -> MAlonzo.Code.Data.Sum.Base.T30
du202 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Sum.Base.C42 (coe v1)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             C10 -> coe MAlonzo.Code.Data.Sum.Base.C38 (coe C10)
             C16 v4
               -> coe
                    MAlonzo.Code.Data.Sum.Base.du84 (coe C16) (\ v5 -> v5)
                    (coe du202 (coe v2) (coe v4))
             _ -> MAlonzo.RTE.mazUnreachableError
name216 = "Data.Fin.Base.join"
d216 :: Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T30 -> T6
d216 v0 v1 = du216 v0
du216 :: Integer -> MAlonzo.Code.Data.Sum.Base.T30 -> T6
du216 v0
  = coe
      MAlonzo.Code.Data.Sum.Base.du66 (\ v1 -> v1) (coe du90 (coe v0))
name226 = "Data.Fin.Base.quotRem"
d226 ::
  Integer -> Integer -> T6 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d226 v0 v1 v2 = du226 v1 v2
du226 :: Integer -> T6 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du226 v0 v1
  = let v2 = coe du202 (coe v0) (coe v1) in
    case coe v2 of
      MAlonzo.Code.Data.Sum.Base.C38 v3
        -> coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v3) (coe C10)
      MAlonzo.Code.Data.Sum.Base.C42 v3
        -> coe
             MAlonzo.Code.Data.Product.du170 (\ v4 -> coe C16)
             (coe du226 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
name258 = "Data.Fin.Base.remQuot"
d258 ::
  Integer -> Integer -> T6 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d258 v0 v1 v2 = du258 v1 v2
du258 :: Integer -> T6 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du258 v0 v1
  = coe MAlonzo.Code.Data.Product.du386 (coe du226 (coe v0) (coe v1))
name266 = "Data.Fin.Base.combine"
d266 :: Integer -> Integer -> T6 -> T6 -> T6
d266 v0 v1 v2 v3 = du266 v1 v2 v3
du266 :: Integer -> T6 -> T6 -> T6
du266 v0 v1 v2
  = case coe v1 of
      C10 -> coe v2
      C16 v4 -> coe du90 (coe v0) (coe du266 (coe v0) (coe v4) (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
name292 = "Data.Fin.Base.fold"
d292 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (Integer -> ()) ->
  Integer ->
  (Integer -> AgdaAny -> AgdaAny) ->
  (Integer -> AgdaAny) -> T6 -> AgdaAny
d292 v0 v1 v2 v3 v4 v5 = du292 v2 v3 v4 v5
du292 ::
  Integer ->
  (Integer -> AgdaAny -> AgdaAny) ->
  (Integer -> AgdaAny) -> T6 -> AgdaAny
du292 v0 v1 v2 v3
  = case coe v3 of
      C10 -> let v5 = subInt (coe v0) (coe (1 :: Integer)) in coe v2 v5
      C16 v5
        -> let v6 = subInt (coe v0) (coe (1 :: Integer)) in
           coe v1 v6 (coe du292 (coe v6) (coe v1) (coe v2) (coe v5))
      _ -> MAlonzo.RTE.mazUnreachableError
name318 = "Data.Fin.Base.fold′"
d318 ::
  Integer ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (T6 -> ()) ->
  (T6 -> AgdaAny -> AgdaAny) -> AgdaAny -> T6 -> AgdaAny
d318 v0 v1 v2 v3 v4 v5 = du318 v3 v4 v5
du318 :: (T6 -> AgdaAny -> AgdaAny) -> AgdaAny -> T6 -> AgdaAny
du318 v0 v1 v2
  = case coe v2 of
      C10 -> coe v1
      C16 v4
        -> coe
             v0 v4 (coe du318 (coe (\ v5 -> coe v0 v5)) (coe v1) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
name342 = "Data.Fin.Base.lift"
d342 :: Integer -> Integer -> Integer -> (T6 -> T6) -> T6 -> T6
d342 v0 v1 v2 v3 v4 = du342 v2 v3 v4
du342 :: Integer -> (T6 -> T6) -> T6 -> T6
du342 v0 v1 v2
  = case coe v0 of
      0 -> coe v1 v2
      _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v2 of
             C10 -> coe C10
             C16 v5 -> coe C16 (coe du342 (coe v3) (coe v1) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
name366 = "Data.Fin.Base._+_"
d366 :: Integer -> Integer -> T6 -> T6 -> T6
d366 v0 v1 v2 v3 = du366 v2 v3
du366 :: T6 -> T6 -> T6
du366 v0 v1
  = case coe v0 of
      C10 -> coe v1
      C16 v3 -> coe C16 (coe du366 (coe v3) (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
name380 = "Data.Fin.Base._-_"
d380 :: Integer -> T6 -> T6 -> T6
d380 v0 v1 v2 = du380 v1 v2
du380 :: T6 -> T6 -> T6
du380 v0 v1
  = case coe v1 of
      C10 -> coe v0
      C16 v3
        -> case coe v0 of
             C16 v5 -> coe du380 (coe v5) (coe v3)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name392 = "Data.Fin.Base._ℕ-_"
d392 :: Integer -> T6 -> T6
d392 v0 v1
  = case coe v1 of
      C10 -> coe d58 (coe v0)
      C16 v3
        -> let v4 = subInt (coe v0) (coe (1 :: Integer)) in
           coe d392 (coe v4) (coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
name402 = "Data.Fin.Base._ℕ-ℕ_"
d402 :: Integer -> T6 -> Integer
d402 v0 v1
  = case coe v1 of
      C10 -> coe v0
      C16 v3
        -> let v4 = subInt (coe v0) (coe (1 :: Integer)) in
           coe d402 (coe v4) (coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
name412 = "Data.Fin.Base.pred"
d412 :: Integer -> T6 -> T6
d412 v0 v1 = du412 v1
du412 :: T6 -> T6
du412 v0
  = case coe v0 of
      C10 -> coe C10
      C16 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name418 = "Data.Fin.Base.opposite"
d418 :: Integer -> T6 -> T6
d418 v0 v1
  = let v2 = subInt (coe v0) (coe (1 :: Integer)) in
    case coe v1 of
      C10 -> coe d58 (coe v2)
      C16 v4 -> coe d418 (coe v2) (coe v4)
      _ -> MAlonzo.RTE.mazUnreachableError
name432 = "Data.Fin.Base.punchOut"
d432 ::
  Integer ->
  T6 ->
  T6 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T12 ->
   MAlonzo.Code.Data.Empty.T4) ->
  T6
d432 v0 v1 v2 v3 = du432 v1 v2
du432 :: T6 -> T6 -> T6
du432 v0 v1
  = case coe v0 of
      C10
        -> case coe v1 of
             C10 -> coe MAlonzo.Code.Data.Empty.d10 () erased erased
             C16 v4 -> coe v4
             _ -> MAlonzo.RTE.mazUnreachableError
      C16 v3
        -> case coe v1 of
             C10 -> coe C10
             C16 v5 -> coe C16 (coe du432 (coe v3) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name452 = "Data.Fin.Base.punchIn"
d452 :: Integer -> T6 -> T6 -> T6
d452 v0 v1 v2 = du452 v1 v2
du452 :: T6 -> T6 -> T6
du452 v0 v1
  = case coe v0 of
      C10 -> coe C16 v1
      C16 v3
        -> case coe v1 of
             C10 -> coe C10
             C16 v5 -> coe C16 (coe du452 (coe v3) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name464 = "Data.Fin.Base._≤_"
d464 :: Integer -> T6 -> T6 -> ()
d464 = erased
name468 = "Data.Fin.Base._<_"
d468 :: Integer -> T6 -> T6 -> ()
d468 = erased
name470 = "Data.Fin.Base._≺_"
d470 a0 a1 = ()
newtype T470 = C476 T6
name480 = "Data.Fin.Base.Ordering"
d480 a0 a1 a2 = ()
data T480 = C488 T6 | C492 | C498 T6
name506 = "Data.Fin.Base.compare"
d506 :: Integer -> T6 -> T6 -> T480
d506 v0 v1 v2 = du506 v1 v2
du506 :: T6 -> T6 -> T480
du506 v0 v1
  = case coe v0 of
      C10
        -> case coe v1 of
             C10 -> coe C492
             C16 v4 -> coe C488 (coe C10)
             _ -> MAlonzo.RTE.mazUnreachableError
      C16 v3
        -> case coe v1 of
             C10 -> coe C498 (coe C10)
             C16 v5
               -> let v6 = coe du506 (coe v3) (coe v5) in
                  case coe v6 of
                    C488 v8 -> coe C488 (coe C16 v8)
                    C492 -> coe C492
                    C498 v8 -> coe C498 (coe C16 v8)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name540 = "Data.Fin.Base.fromℕ≤"
d540 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T18 -> T6
d540 v0 v1 v2 = coe du66 v0
name542 = "Data.Fin.Base.fromℕ≤″"
d542 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T188 -> T6
d542 v0 v1 v2 = coe du82 v0 v2
