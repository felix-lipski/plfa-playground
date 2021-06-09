{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Binary.Construct.Closure.Reflexive where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Primitive

name30 = "Relation.Binary.Construct.Closure.Reflexive.ReflClosure"
d30 a0 a1 a2 a3 a4 a5 = ()
data T30 = C36 | C44 AgdaAny
name52 = "Relation.Binary.Construct.Closure.Reflexive.map"
d52 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T30 -> T30
d52 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 = du52 v9 v10 v11 v12
du52 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T30 -> T30
du52 v0 v1 v2 v3
  = case coe v3 of
      C36 -> coe C36
      C44 v6 -> coe C44 (coe v0 v1 v2 v6)
      _ -> MAlonzo.RTE.mazUnreachableError
name62 = "Relation.Binary.Construct.Closure.Reflexive.drop-refl"
d62 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T30 -> AgdaAny
d62 v0 v1 v2 v3 v4 v5 v6 v7 = du62 v4 v5 v7
du62 :: (AgdaAny -> AgdaAny) -> AgdaAny -> T30 -> AgdaAny
du62 v0 v1 v2
  = case coe v2 of
      C36 -> coe v0 v1
      C44 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name72 = "Relation.Binary.Construct.Closure.Reflexive.reflexive"
d72 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> T30
d72 v0 v1 v2 v3 v4 v5 v6 = du72
du72 :: T30
du72 = coe C36
name84 = "Relation.Binary.Construct.Closure.Reflexive.[]-injective"
d84 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d84 = erased
name96 = "Relation.Binary.Construct.Closure.Reflexive.Refl"
d96 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny -> ()) -> AgdaAny -> AgdaAny -> ()
d96 = erased
