{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Data.Sum.Base where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Relation.Nullary
import qualified MAlonzo.Code.Relation.Nullary.Reflects

name30 = "Data.Sum.Base._⊎_"
d30 a0 a1 a2 a3 = ()
data T30 = C38 AgdaAny | C42 AgdaAny
name52 = "Data.Sum.Base.[_,_]"
d52 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (T30 -> ()) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> T30 -> AgdaAny
d52 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du52 v6 v7 v8
du52 ::
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> T30 -> AgdaAny
du52 v0 v1 v2
  = case coe v2 of
      C38 v3 -> coe v0 v3
      C42 v3 -> coe v1 v3
      _ -> MAlonzo.RTE.mazUnreachableError
name66 = "Data.Sum.Base.[_,_]′"
d66 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> T30 -> AgdaAny
d66 v0 v1 v2 v3 v4 v5 = du66
du66 ::
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> T30 -> AgdaAny
du66 = coe du52
name68 = "Data.Sum.Base.fromInj₁"
d68 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny) -> T30 -> AgdaAny
d68 v0 v1 v2 v3 = du68
du68 :: (AgdaAny -> AgdaAny) -> T30 -> AgdaAny
du68 = coe du66 (\ v0 -> v0)
name72 = "Data.Sum.Base.fromInj₂"
d72 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny) -> T30 -> AgdaAny
d72 v0 v1 v2 v3 v4 = du72 v4
du72 :: (AgdaAny -> AgdaAny) -> T30 -> AgdaAny
du72 v0 = coe du66 v0 (\ v1 -> v1)
name76 = "Data.Sum.Base.reduce"
d76 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> T30 -> AgdaAny
d76 v0 v1 = du76
du76 :: T30 -> AgdaAny
du76 = coe du66 (\ v0 -> v0) (\ v0 -> v0)
name78 = "Data.Sum.Base.swap"
d78 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Agda.Primitive.T4 -> () -> T30 -> T30
d78 v0 v1 v2 v3 v4 = du78 v4
du78 :: T30 -> T30
du78 v0
  = case coe v0 of
      C38 v1 -> coe C42 (coe v1)
      C42 v1 -> coe C38 (coe v1)
      _ -> MAlonzo.RTE.mazUnreachableError
name84 = "Data.Sum.Base.map"
d84 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> T30 -> T30
d84 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du84 v8 v9
du84 :: (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> T30 -> T30
du84 v0 v1
  = coe
      du66 (\ v2 -> coe C38 (coe v0 v2)) (\ v2 -> coe C42 (coe v1 v2))
name90 = "Data.Sum.Base.map₁"
d90 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny) -> T30 -> T30
d90 v0 v1 v2 v3 v4 v5 v6 = du90 v6
du90 :: (AgdaAny -> AgdaAny) -> T30 -> T30
du90 v0 = coe du84 (coe v0) (coe (\ v1 -> v1))
name94 = "Data.Sum.Base.map₂"
d94 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny) -> T30 -> T30
d94 v0 v1 v2 v3 v4 v5 = du94
du94 :: (AgdaAny -> AgdaAny) -> T30 -> T30
du94 = coe du84 (coe (\ v0 -> v0))
name96 = "Data.Sum.Base.assocʳ"
d96 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Agda.Primitive.T4 -> () -> T30 -> T30
d96 v0 v1 v2 v3 v4 v5 = du96
du96 :: T30 -> T30
du96
  = coe
      du66 (coe du94 (coe C38)) (\ v0 -> coe C42 (coe C42 (coe v0)))
name98 = "Data.Sum.Base.assocˡ"
d98 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Agda.Primitive.T4 -> () -> T30 -> T30
d98 v0 v1 v2 v3 v4 v5 = du98
du98 :: T30 -> T30
du98
  = coe
      du66 (\ v0 -> coe C38 (coe C38 (coe v0))) (coe du90 (coe C42))
name100 = "Data.Sum.Base._-⊎-_"
d100 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> AgdaAny -> AgdaAny -> ()
d100 = erased
name106 = "Data.Sum.Base.fromDec"
d106 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Relation.Nullary.T32 -> T30
d106 v0 v1 v2 = du106 v2
du106 :: MAlonzo.Code.Relation.Nullary.T32 -> T30
du106 v0
  = case coe v0 of
      MAlonzo.Code.Relation.Nullary.C46 v1 v2
        -> if coe v1
             then coe
                    C38 (coe MAlonzo.Code.Relation.Nullary.Reflects.du20 (coe v2))
             else coe
                    C42 (coe MAlonzo.Code.Relation.Nullary.Reflects.du20 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
name112 = "Data.Sum.Base.toDec"
d112 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> T30 -> MAlonzo.Code.Relation.Nullary.T32
d112 v0 v1 v2 = du112 v2
du112 :: T30 -> MAlonzo.Code.Relation.Nullary.T32
du112 v0
  = case coe v0 of
      C38 v1
        -> coe
             MAlonzo.Code.Relation.Nullary.C46
             (coe MAlonzo.Code.Agda.Builtin.Bool.C10)
             (coe MAlonzo.Code.Relation.Nullary.C22 (coe v1))
      C42 v1
        -> coe
             MAlonzo.Code.Relation.Nullary.C46
             (coe MAlonzo.Code.Agda.Builtin.Bool.C8)
             (coe MAlonzo.Code.Relation.Nullary.C26)
      _ -> MAlonzo.RTE.mazUnreachableError
