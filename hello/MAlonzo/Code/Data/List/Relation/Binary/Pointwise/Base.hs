{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Product

name48 = "Data.List.Relation.Binary.Pointwise.Base.Pointwise"
d48 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T48 = C56 | C62 AgdaAny T48
name64 = "Data.List.Relation.Binary.Pointwise.Base.head"
d64 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> [AgdaAny] -> T48 -> AgdaAny
d64 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du64 v10
du64 :: T48 -> AgdaAny
du64 v0
  = case coe v0 of
      C62 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name70 = "Data.List.Relation.Binary.Pointwise.Base.tail"
d70 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> [AgdaAny] -> T48 -> T48
d70 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du70 v10
du70 :: T48 -> T48
du70 v0
  = case coe v0 of
      C62 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name76 = "Data.List.Relation.Binary.Pointwise.Base.uncons"
d76 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny -> [AgdaAny] -> T48 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d76 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du76
du76 :: T48 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du76 = coe MAlonzo.Code.Data.Product.du132 (coe du64) (coe du70)
name102 = "Data.List.Relation.Binary.Pointwise.Base.rec"
d102 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  ([AgdaAny] -> [AgdaAny] -> T48 -> ()) ->
  (AgdaAny ->
   AgdaAny ->
   [AgdaAny] -> [AgdaAny] -> T48 -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> [AgdaAny] -> [AgdaAny] -> T48 -> AgdaAny
d102 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
  = du102 v8 v9 v10 v11 v12
du102 ::
  (AgdaAny ->
   AgdaAny ->
   [AgdaAny] -> [AgdaAny] -> T48 -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> [AgdaAny] -> [AgdaAny] -> T48 -> AgdaAny
du102 v0 v1 v2 v3 v4
  = case coe v4 of
      C56 -> coe v1
      C62 v9 v10
        -> case coe v2 of
             (:) v11 v12
               -> case coe v3 of
                    (:) v13 v14
                      -> coe
                           v0 v11 v13 v12 v14 v10 v9
                           (coe du102 (coe v0) (coe v1) (coe v12) (coe v14) (coe v10))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name120 = "Data.List.Relation.Binary.Pointwise.Base.map"
d120 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> T48 -> T48
d120 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du120 v8 v9 v10 v11
du120 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> T48 -> T48
du120 v0 v1 v2 v3
  = case coe v3 of
      C56 -> coe v3
      C62 v8 v9
        -> case coe v1 of
             (:) v10 v11
               -> case coe v2 of
                    (:) v12 v13
                      -> coe
                           C62 (coe v0 v10 v12 v8)
                           (coe du120 (coe v0) (coe v11) (coe v13) (coe v9))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
