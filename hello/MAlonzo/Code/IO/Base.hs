{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.IO.Base where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Coinduction
import qualified MAlonzo.Code.Agda.Builtin.IO
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.IO.Primitive
import qualified MAlonzo.Code.Level

name16 = "IO.Base.IO"
d16 a0 a1 = ()
data T16
  = C22 (MAlonzo.Code.Agda.Builtin.IO.T8 AgdaAny AgdaAny) |
    C26 AgdaAny |
    C36 (MAlonzo.RTE.Infinity AgdaAny T16)
        (AgdaAny -> MAlonzo.RTE.Infinity AgdaAny T16) |
    C44 (MAlonzo.RTE.Infinity AgdaAny T16)
        (MAlonzo.RTE.Infinity AgdaAny T16)
name46 = "IO.Base.pure"
d46 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> AgdaAny -> T16
d46 v0 v1 = du46
du46 :: AgdaAny -> T16
du46 = coe C26
name58 = "IO.Base._._<*>_"
d58 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> () -> T16 -> T16 -> T16
d58 v0 v1 v2 v3 v4 = du58 v3 v4
du58 :: T16 -> T16 -> T16
du58 v0 v1 = coe C36 (coe du707 (coe v0)) (coe du891 (coe v1))
name68 = "IO.Base._._<$>_"
d68 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> (AgdaAny -> AgdaAny) -> T16 -> T16
d68 v0 v1 v2 v3 v4 = du68 v3 v4
du68 :: (AgdaAny -> AgdaAny) -> T16 -> T16
du68 v0 v1 = coe du58 (coe C26 (coe v0)) (coe v1)
name74 = "IO.Base._._>>=_"
d74 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> T16 -> (AgdaAny -> T16) -> T16
d74 v0 v1 v2 v3 v4 = du74 v3 v4
du74 :: T16 -> (AgdaAny -> T16) -> T16
du74 v0 v1 = coe C36 (coe du2021 (coe v0)) (coe du2205 (coe v1))
name82 = "IO.Base._._>>_"
d82 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> () -> T16 -> T16 -> T16
d82 v0 v1 v2 v3 v4 = du82 v3 v4
du82 :: T16 -> T16 -> T16
du82 v0 v1 = coe C44 (coe du2555 (coe v0)) (coe du2729 (coe v1))
name88 = "IO.Base.run"
d88 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> T16 -> MAlonzo.Code.Agda.Builtin.IO.T8 AgdaAny AgdaAny
d88 v0 v1 v2 = du88 v0 v2
du88 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T16 -> MAlonzo.Code.Agda.Builtin.IO.T8 AgdaAny AgdaAny
du88 v0 v1
  = case coe v1 of
      C22 v2 -> coe v2
      C26 v2 -> coe MAlonzo.Code.IO.Primitive.d8 v0 erased v2
      C36 v3 v4
        -> coe
             MAlonzo.Code.IO.Primitive.d18 v0 v0 erased erased
             (coe
                du88 (coe v0)
                (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v3)))
             (\ v5 ->
                coe
                  du88 (coe v0)
                  (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v4 v5)))
      C44 v3 v4
        -> coe
             MAlonzo.Code.IO.Primitive.d18 v0 v0 erased erased
             (coe
                du88 (coe v0)
                (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v3)))
             (\ v5 ->
                coe
                  du88 (coe v0)
                  (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v4)))
      _ -> MAlonzo.RTE.mazUnreachableError
name106 = "IO.Base.Main"
d106 :: ()
d106 = erased
name108 = "IO.Base.ignore"
d108 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> T16 -> T16
d108 v0 v1 v2 = du108 v2
du108 :: T16 -> T16
du108 v0
  = coe
      du82 (coe v0)
      (coe
         C26
         (coe
            MAlonzo.Code.Level.C20 (coe MAlonzo.Code.Agda.Builtin.Unit.C8)))
name707 = "IO.Base._._.♯-0"
d707 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> T16 -> T16 -> MAlonzo.RTE.Infinity AgdaAny T16
d707 v0 v1 v2 v3 v4 = du707 v3
du707 :: T16 -> MAlonzo.RTE.Infinity AgdaAny T16
du707 v0 = coe MAlonzo.Code.Agda.Builtin.Coinduction.C16 (coe v0)
name891 = "IO.Base._._.♯-1"
d891 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  T16 ->
  T16 -> (AgdaAny -> AgdaAny) -> MAlonzo.RTE.Infinity AgdaAny T16
d891 v0 v1 v2 v3 v4 v5 = du891 v4 v5
du891 ::
  T16 -> (AgdaAny -> AgdaAny) -> MAlonzo.RTE.Infinity AgdaAny T16
du891 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C16
      (coe C36 (coe du1127 (coe v0)) (coe du1369 (coe v1)))
name1127 = "IO.Base._._._.♯-2"
d1127 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  T16 ->
  T16 -> (AgdaAny -> AgdaAny) -> MAlonzo.RTE.Infinity AgdaAny T16
d1127 v0 v1 v2 v3 v4 v5 = du1127 v4
du1127 :: T16 -> MAlonzo.RTE.Infinity AgdaAny T16
du1127 v0 = coe MAlonzo.Code.Agda.Builtin.Coinduction.C16 (coe v0)
name1369 = "IO.Base._._._.♯-3"
d1369 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  T16 ->
  T16 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> MAlonzo.RTE.Infinity AgdaAny T16
d1369 v0 v1 v2 v3 v4 v5 v6 = du1369 v5 v6
du1369 ::
  (AgdaAny -> AgdaAny) -> AgdaAny -> MAlonzo.RTE.Infinity AgdaAny T16
du1369 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C16 (coe C26 (coe v0 v1))
name2021 = "IO.Base._._.♯-4"
d2021 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () -> T16 -> (AgdaAny -> T16) -> MAlonzo.RTE.Infinity AgdaAny T16
d2021 v0 v1 v2 v3 v4 = du2021 v3
du2021 :: T16 -> MAlonzo.RTE.Infinity AgdaAny T16
du2021 v0 = coe MAlonzo.Code.Agda.Builtin.Coinduction.C16 (coe v0)
name2205 = "IO.Base._._.♯-5"
d2205 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  T16 ->
  (AgdaAny -> T16) -> AgdaAny -> MAlonzo.RTE.Infinity AgdaAny T16
d2205 v0 v1 v2 v3 v4 v5 = du2205 v4 v5
du2205 ::
  (AgdaAny -> T16) -> AgdaAny -> MAlonzo.RTE.Infinity AgdaAny T16
du2205 v0 v1
  = coe MAlonzo.Code.Agda.Builtin.Coinduction.C16 (coe v0 v1)
name2555 = "IO.Base._._.♯-6"
d2555 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> T16 -> T16 -> MAlonzo.RTE.Infinity AgdaAny T16
d2555 v0 v1 v2 v3 v4 = du2555 v3
du2555 :: T16 -> MAlonzo.RTE.Infinity AgdaAny T16
du2555 v0 = coe MAlonzo.Code.Agda.Builtin.Coinduction.C16 (coe v0)
name2729 = "IO.Base._._.♯-7"
d2729 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> T16 -> T16 -> MAlonzo.RTE.Infinity AgdaAny T16
d2729 v0 v1 v2 v3 v4 = du2729 v4
du2729 :: T16 -> MAlonzo.RTE.Infinity AgdaAny T16
du2729 v0 = coe MAlonzo.Code.Agda.Builtin.Coinduction.C16 (coe v0)
