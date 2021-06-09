{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Data.List.Base where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.Fin.Base
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.These.Base
import qualified MAlonzo.Code.Relation.Nullary
import qualified MAlonzo.Code.Relation.Nullary.Negation.Core
import qualified MAlonzo.Code.Relation.Unary.Properties

name22 = "Data.List.Base.map"
d22 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> [AgdaAny]
d22 v0 v1 v2 v3 v4 v5 = du22 v4 v5
du22 :: (AgdaAny -> AgdaAny) -> [AgdaAny] -> [AgdaAny]
du22 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C22 (coe v0 v2)
             (coe du22 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
name32 = "Data.List.Base.mapMaybe"
d32 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  [AgdaAny] -> [AgdaAny]
d32 v0 v1 v2 v3 v4 v5 = du32 v4 v5
du32 ::
  (AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  [AgdaAny] -> [AgdaAny]
du32 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> let v4 = coe v0 v2 in
           case coe v4 of
             MAlonzo.Code.Data.Maybe.Base.C26 -> coe du32 (coe v0) (coe v3)
             MAlonzo.Code.Data.Maybe.Base.C30 v5
               -> coe
                    MAlonzo.Code.Agda.Builtin.List.C22 (coe v5)
                    (coe du32 (coe v0) (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name60 = "Data.List.Base._++_"
d60 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d60 v0 v1 v2 v3 = du60 v2 v3
du60 :: [AgdaAny] -> [AgdaAny] -> [AgdaAny]
du60 v0 v1
  = case coe v0 of
      [] -> coe v1
      (:) v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C22 (coe v2)
             (coe du60 (coe v3) (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
name70 = "Data.List.Base.intersperse"
d70 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> AgdaAny -> [AgdaAny] -> [AgdaAny]
d70 v0 v1 v2 v3 = du70 v2 v3
du70 :: AgdaAny -> [AgdaAny] -> [AgdaAny]
du70 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> let v4
                 = coe
                     MAlonzo.Code.Agda.Builtin.List.C22 (coe v2)
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C22 (coe v0)
                        (coe du70 (coe v0) (coe v3))) in
           case coe v3 of
             [] -> coe v1
             _ -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name84 = "Data.List.Base.intercalate"
d84 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> [[AgdaAny]] -> [AgdaAny]
d84 v0 v1 v2 v3 = du84 v2 v3
du84 :: [AgdaAny] -> [[AgdaAny]] -> [AgdaAny]
du84 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> let v4
                 = coe
                     du60 (coe v2) (coe du60 (coe v0) (coe du84 (coe v0) (coe v3))) in
           case coe v3 of
             [] -> coe v2
             _ -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name98 = "Data.List.Base.cartesianProductWith"
d98 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d98 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du98 v6 v7 v8
du98 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
du98 v0 v1 v2
  = case coe v1 of
      [] -> coe v1
      (:) v3 v4
        -> coe
             du60 (coe du22 (coe v0 v3) (coe v2))
             (coe du98 (coe v0) (coe v4) (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
name110 = "Data.List.Base.cartesianProduct"
d110 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] -> [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T14]
d110 v0 v1 v2 v3 = du110
du110 ::
  [AgdaAny] -> [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T14]
du110 = coe du98 (coe MAlonzo.Code.Agda.Builtin.Sigma.C32)
name112 = "Data.List.Base.alignWith"
d112 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (MAlonzo.Code.Data.These.Base.T38 -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d112 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du112 v6 v7 v8
du112 ::
  (MAlonzo.Code.Data.These.Base.T38 -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
du112 v0 v1 v2
  = case coe v1 of
      []
        -> coe
             du22
             (coe
                (\ v3 -> coe v0 (coe MAlonzo.Code.Data.These.Base.C50 (coe v3))))
             (coe v2)
      (:) v3 v4
        -> case coe v2 of
             []
               -> coe
                    du22
                    (coe
                       (\ v5 -> coe v0 (coe MAlonzo.Code.Data.These.Base.C48 (coe v5))))
                    (coe v1)
             (:) v5 v6
               -> coe
                    MAlonzo.Code.Agda.Builtin.List.C22
                    (coe v0 (coe MAlonzo.Code.Data.These.Base.C52 (coe v3) (coe v5)))
                    (coe du112 (coe v0) (coe v4) (coe v6))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name132 = "Data.List.Base.zipWith"
d132 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d132 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du132 v6 v7 v8
du132 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
du132 v0 v1 v2
  = let v3 = coe MAlonzo.Code.Agda.Builtin.List.C16 in
    case coe v1 of
      (:) v4 v5
        -> case coe v2 of
             (:) v6 v7
               -> coe
                    MAlonzo.Code.Agda.Builtin.List.C22 (coe v0 v4 v6)
                    (coe du132 (coe v0) (coe v5) (coe v7))
             _ -> coe v3
      _ -> coe v3
name146 = "Data.List.Base.unalignWith"
d146 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Data.These.Base.T38) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d146 v0 v1 v2 v3 v4 v5 v6 v7 = du146 v6 v7
du146 ::
  (AgdaAny -> MAlonzo.Code.Data.These.Base.T38) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du146 v0 v1
  = case coe v1 of
      [] -> coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v1) (coe v1)
      (:) v2 v3
        -> let v4 = coe v0 v2 in
           case coe v4 of
             MAlonzo.Code.Data.These.Base.C48 v5
               -> coe
                    MAlonzo.Code.Data.Product.du158
                    (\ v6 -> coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v5) (coe v6))
                    (coe du146 (coe v0) (coe v3))
             MAlonzo.Code.Data.These.Base.C50 v5
               -> coe
                    MAlonzo.Code.Data.Product.du170
                    (\ v6 v7 ->
                       coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v5) (coe v7))
                    (coe du146 (coe v0) (coe v3))
             MAlonzo.Code.Data.These.Base.C52 v5 v6
               -> coe
                    MAlonzo.Code.Data.Product.du148
                    (coe
                       (\ v7 -> coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v5) (coe v7)))
                    (coe
                       (\ v7 v8 ->
                          coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v6) (coe v8)))
                    (coe du146 (coe v0) (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name194 = "Data.List.Base.unzipWith"
d194 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d194 v0 v1 v2 v3 v4 v5 v6 v7 = du194 v6 v7
du194 ::
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du194 v0 v1
  = case coe v1 of
      [] -> coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v1) (coe v1)
      (:) v2 v3
        -> coe
             MAlonzo.Code.Data.Product.du218
             (coe MAlonzo.Code.Agda.Builtin.List.C22)
             (coe (\ v4 v5 -> coe MAlonzo.Code.Agda.Builtin.List.C22))
             (coe v0 v2) (coe du194 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
name204 = "Data.List.Base.partitionSumsWith"
d204 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d204 v0 v1 v2 v3 v4 v5 v6 = du204 v6
du204 ::
  (AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du204 v0
  = coe
      du146
      (coe (\ v1 -> coe MAlonzo.Code.Data.These.Base.du54 (coe v0 v1)))
name208 = "Data.List.Base.align"
d208 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> [AgdaAny] -> [MAlonzo.Code.Data.These.Base.T38]
d208 v0 v1 v2 v3 = du208
du208 ::
  [AgdaAny] -> [AgdaAny] -> [MAlonzo.Code.Data.These.Base.T38]
du208 = coe du112 (coe (\ v0 -> v0))
name210 = "Data.List.Base.zip"
d210 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] -> [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T14]
d210 v0 v1 v2 v3 = du210
du210 ::
  [AgdaAny] -> [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T14]
du210 = coe du132 (coe MAlonzo.Code.Agda.Builtin.Sigma.C32)
name212 = "Data.List.Base.unalign"
d212 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [MAlonzo.Code.Data.These.Base.T38] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d212 v0 v1 v2 v3 = du212
du212 ::
  [MAlonzo.Code.Data.These.Base.T38] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du212 = coe du146 (coe (\ v0 -> v0))
name214 = "Data.List.Base.unzip"
d214 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d214 v0 v1 v2 v3 = du214
du214 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du214 = coe du194 (coe (\ v0 -> v0))
name216 = "Data.List.Base.partitionSums"
d216 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [MAlonzo.Code.Data.Sum.Base.T30] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d216 v0 v1 v2 v3 = du216
du216 ::
  [MAlonzo.Code.Data.Sum.Base.T30] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du216 = coe du204 (coe (\ v0 -> v0))
name220 = "Data.List.Base.merge"
d220 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d220 v0 v1 v2 v3 v4 v5 v6 = du220 v4 v5 v6
du220 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
du220 v0 v1 v2
  = case coe v1 of
      [] -> coe v2
      (:) v3 v4
        -> case coe v2 of
             [] -> coe v1
             (:) v5 v6
               -> coe
                    MAlonzo.Code.Data.Bool.Base.du42
                    (coe MAlonzo.Code.Relation.Nullary.d42 (coe v0 v3 v5))
                    (coe
                       MAlonzo.Code.Agda.Builtin.List.C22 (coe v3)
                       (coe du220 (coe v0) (coe v4) (coe v2)))
                    (coe
                       MAlonzo.Code.Agda.Builtin.List.C22 (coe v5)
                       (coe du220 (coe v0) (coe v1) (coe v6)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name240 = "Data.List.Base.foldr"
d240 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> [AgdaAny] -> AgdaAny
d240 v0 v1 v2 v3 v4 v5 v6 = du240 v4 v5 v6
du240 ::
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> [AgdaAny] -> AgdaAny
du240 v0 v1 v2
  = case coe v2 of
      [] -> coe v1
      (:) v3 v4 -> coe v0 v3 (coe du240 (coe v0) (coe v1) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
name254 = "Data.List.Base.foldl"
d254 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> [AgdaAny] -> AgdaAny
d254 v0 v1 v2 v3 v4 v5 v6 = du254 v4 v5 v6
du254 ::
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> [AgdaAny] -> AgdaAny
du254 v0 v1 v2
  = case coe v2 of
      [] -> coe v1
      (:) v3 v4 -> coe du254 (coe v0) (coe v0 v1 v3) (coe v4)
      _ -> MAlonzo.RTE.mazUnreachableError
name268 = "Data.List.Base.concat"
d268 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> [[AgdaAny]] -> [AgdaAny]
d268 v0 v1 = du268
du268 :: [[AgdaAny]] -> [AgdaAny]
du268
  = coe du240 (coe du60) (coe MAlonzo.Code.Agda.Builtin.List.C16)
name270 = "Data.List.Base.concatMap"
d270 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> [AgdaAny]) -> [AgdaAny] -> [AgdaAny]
d270 v0 v1 v2 v3 v4 v5 = du270 v4 v5
du270 :: (AgdaAny -> [AgdaAny]) -> [AgdaAny] -> [AgdaAny]
du270 v0 v1 = coe du268 (coe du22 (coe v0) (coe v1))
name274 = "Data.List.Base.null"
d274 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> [AgdaAny] -> Bool
d274 v0 v1 v2 = du274 v2
du274 :: [AgdaAny] -> Bool
du274 v0
  = case coe v0 of
      [] -> coe MAlonzo.Code.Agda.Builtin.Bool.C10
      (:) v1 v2 -> coe MAlonzo.Code.Agda.Builtin.Bool.C8
      _ -> MAlonzo.RTE.mazUnreachableError
name280 = "Data.List.Base.and"
d280 :: [Bool] -> Bool
d280
  = coe
      du240 (coe MAlonzo.Code.Data.Bool.Base.d24)
      (coe MAlonzo.Code.Agda.Builtin.Bool.C10)
name282 = "Data.List.Base.or"
d282 :: [Bool] -> Bool
d282
  = coe
      du240 (coe MAlonzo.Code.Data.Bool.Base.d30)
      (coe MAlonzo.Code.Agda.Builtin.Bool.C8)
name284 = "Data.List.Base.any"
d284 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> Bool) -> [AgdaAny] -> Bool
d284 v0 v1 v2 v3 = du284 v2 v3
du284 :: (AgdaAny -> Bool) -> [AgdaAny] -> Bool
du284 v0 v1 = coe d282 (coe du22 (coe v0) (coe v1))
name288 = "Data.List.Base.all"
d288 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> Bool) -> [AgdaAny] -> Bool
d288 v0 v1 v2 v3 = du288 v2 v3
du288 :: (AgdaAny -> Bool) -> [AgdaAny] -> Bool
du288 v0 v1 = coe d280 (coe du22 (coe v0) (coe v1))
name292 = "Data.List.Base.sum"
d292 :: [Integer] -> Integer
d292 = coe du240 (coe addInt) (coe (0 :: Integer))
name294 = "Data.List.Base.product"
d294 :: [Integer] -> Integer
d294 = coe du240 (coe mulInt) (coe (1 :: Integer))
name296 = "Data.List.Base.length"
d296 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> [AgdaAny] -> Integer
d296 v0 v1 = du296
du296 :: [AgdaAny] -> Integer
du296
  = coe
      du240 (coe (\ v0 v1 -> addInt (coe (1 :: Integer)) (coe v1)))
      (coe (0 :: Integer))
name298 = "Data.List.Base.[_]"
d298 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> AgdaAny -> [AgdaAny]
d298 v0 v1 v2 = du298 v2
du298 :: AgdaAny -> [AgdaAny]
du298 v0
  = coe
      MAlonzo.Code.Agda.Builtin.List.C22 (coe v0)
      (coe MAlonzo.Code.Agda.Builtin.List.C16)
name302 = "Data.List.Base.fromMaybe"
d302 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Data.Maybe.Base.T22 -> [AgdaAny]
d302 v0 v1 v2 = du302 v2
du302 :: MAlonzo.Code.Data.Maybe.Base.T22 -> [AgdaAny]
du302 v0
  = case coe v0 of
      MAlonzo.Code.Data.Maybe.Base.C26
        -> coe MAlonzo.Code.Agda.Builtin.List.C16
      MAlonzo.Code.Data.Maybe.Base.C30 v1
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C22 (coe v1)
             (coe MAlonzo.Code.Agda.Builtin.List.C16)
      _ -> MAlonzo.RTE.mazUnreachableError
name306 = "Data.List.Base.replicate"
d306 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> AgdaAny -> [AgdaAny]
d306 v0 v1 v2 v3 = du306 v2 v3
du306 :: Integer -> AgdaAny -> [AgdaAny]
du306 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Agda.Builtin.List.C16
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             MAlonzo.Code.Agda.Builtin.List.C22 (coe v1)
             (coe du306 (coe v2) (coe v1))
name314 = "Data.List.Base.inits"
d314 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> [AgdaAny] -> [[AgdaAny]]
d314 v0 v1 v2 = du314 v2
du314 :: [AgdaAny] -> [[AgdaAny]]
du314 v0
  = case coe v0 of
      [] -> coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v0) (coe v0)
      (:) v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C22
             (coe MAlonzo.Code.Agda.Builtin.List.C16)
             (coe
                du22
                (coe
                   (\ v3 -> coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v1) (coe v3)))
                (coe du314 (coe v2)))
      _ -> MAlonzo.RTE.mazUnreachableError
name322 = "Data.List.Base.tails"
d322 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> [AgdaAny] -> [[AgdaAny]]
d322 v0 v1 v2 = du322 v2
du322 :: [AgdaAny] -> [[AgdaAny]]
du322 v0
  = case coe v0 of
      [] -> coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v0) (coe v0)
      (:) v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C22 (coe v0) (coe du322 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
name328 = "Data.List.Base.scanr"
d328 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> [AgdaAny] -> [AgdaAny]
d328 v0 v1 v2 v3 v4 v5 v6 = du328 v4 v5 v6
du328 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> [AgdaAny] -> [AgdaAny]
du328 v0 v1 v2
  = case coe v2 of
      [] -> coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v1) (coe v2)
      (:) v3 v4
        -> let v5 = coe du328 (coe v0) (coe v1) (coe v4) in
           case coe v5 of
             [] -> coe v5
             (:) v6 v7
               -> coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v0 v3 v6) (coe v5)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name366 = "Data.List.Base.scanl"
d366 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> [AgdaAny] -> [AgdaAny]
d366 v0 v1 v2 v3 v4 v5 v6 = du366 v4 v5 v6
du366 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> [AgdaAny] -> [AgdaAny]
du366 v0 v1 v2
  = case coe v2 of
      [] -> coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v1) (coe v2)
      (:) v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C22 (coe v1)
             (coe du366 (coe v0) (coe v0 v1 v3) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
name380 = "Data.List.Base.applyUpTo"
d380 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (Integer -> AgdaAny) -> Integer -> [AgdaAny]
d380 v0 v1 v2 v3 = du380 v2 v3
du380 :: (Integer -> AgdaAny) -> Integer -> [AgdaAny]
du380 v0 v1
  = case coe v1 of
      0 -> coe MAlonzo.Code.Agda.Builtin.List.C16
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             MAlonzo.Code.Agda.Builtin.List.C22 (coe v0 (0 :: Integer))
             (coe
                du380 (coe (\ v3 -> coe v0 (addInt (coe (1 :: Integer)) (coe v3))))
                (coe v2))
name388 = "Data.List.Base.applyDownFrom"
d388 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (Integer -> AgdaAny) -> Integer -> [AgdaAny]
d388 v0 v1 v2 v3 = du388 v2 v3
du388 :: (Integer -> AgdaAny) -> Integer -> [AgdaAny]
du388 v0 v1
  = case coe v1 of
      0 -> coe MAlonzo.Code.Agda.Builtin.List.C16
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             MAlonzo.Code.Agda.Builtin.List.C22 (coe v0 v2)
             (coe du388 (coe v0) (coe v2))
name400 = "Data.List.Base.tabulate"
d400 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer -> (MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) -> [AgdaAny]
d400 v0 v1 v2 v3 = du400 v2 v3
du400 ::
  Integer -> (MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) -> [AgdaAny]
du400 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Agda.Builtin.List.C16
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             MAlonzo.Code.Agda.Builtin.List.C22
             (coe v1 (coe MAlonzo.Code.Data.Fin.Base.C10))
             (coe
                du400 (coe v2)
                (coe (\ v3 -> coe v1 (coe MAlonzo.Code.Data.Fin.Base.C16 v3))))
name410 = "Data.List.Base.lookup"
d410 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny
d410 v0 v1 v2 v3 = du410 v2 v3
du410 :: [AgdaAny] -> MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny
du410 v0 v1
  = case coe v0 of
      (:) v2 v3
        -> case coe v1 of
             MAlonzo.Code.Data.Fin.Base.C10 -> coe v2
             MAlonzo.Code.Data.Fin.Base.C16 v5 -> coe du410 (coe v3) (coe v5)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name422 = "Data.List.Base.upTo"
d422 :: Integer -> [Integer]
d422 = coe du380 (coe (\ v0 -> v0))
name424 = "Data.List.Base.downFrom"
d424 :: Integer -> [Integer]
d424 = coe du388 (coe (\ v0 -> v0))
name428 = "Data.List.Base.allFin"
d428 :: Integer -> [MAlonzo.Code.Data.Fin.Base.T6]
d428 v0 = coe du400 (coe v0) (coe (\ v1 -> v1))
name440 = "Data.List.Base.unfold"
d440 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (Integer -> ()) ->
  (Integer -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  Integer -> AgdaAny -> [AgdaAny]
d440 v0 v1 v2 v3 v4 v5 v6 = du440 v4 v5 v6
du440 ::
  (Integer -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  Integer -> AgdaAny -> [AgdaAny]
du440 v0 v1 v2
  = case coe v1 of
      0 -> coe MAlonzo.Code.Agda.Builtin.List.C16
      _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
           let v4 = coe v0 v3 v2 in
           case coe v4 of
             MAlonzo.Code.Data.Maybe.Base.C26
               -> coe MAlonzo.Code.Agda.Builtin.List.C16
             MAlonzo.Code.Data.Maybe.Base.C30 v5
               -> case coe v5 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C32 v6 v7
                      -> coe
                           MAlonzo.Code.Agda.Builtin.List.C22 (coe v6)
                           (coe du440 (coe v0) (coe v3) (coe v7))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
name480 = "Data.List.Base.uncons"
d480 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> MAlonzo.Code.Data.Maybe.Base.T22
d480 v0 v1 v2 = du480 v2
du480 :: [AgdaAny] -> MAlonzo.Code.Data.Maybe.Base.T22
du480 v0
  = case coe v0 of
      [] -> coe MAlonzo.Code.Data.Maybe.Base.C26
      (:) v1 v2
        -> coe
             MAlonzo.Code.Data.Maybe.Base.C30
             (coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v1) (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
name486 = "Data.List.Base.head"
d486 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> MAlonzo.Code.Data.Maybe.Base.T22
d486 v0 v1 v2 = du486 v2
du486 :: [AgdaAny] -> MAlonzo.Code.Data.Maybe.Base.T22
du486 v0
  = case coe v0 of
      [] -> coe MAlonzo.Code.Data.Maybe.Base.C26
      (:) v1 v2 -> coe MAlonzo.Code.Data.Maybe.Base.C30 (coe v1)
      _ -> MAlonzo.RTE.mazUnreachableError
name490 = "Data.List.Base.tail"
d490 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> MAlonzo.Code.Data.Maybe.Base.T22
d490 v0 v1 v2 = du490 v2
du490 :: [AgdaAny] -> MAlonzo.Code.Data.Maybe.Base.T22
du490 v0
  = case coe v0 of
      [] -> coe MAlonzo.Code.Data.Maybe.Base.C26
      (:) v1 v2 -> coe MAlonzo.Code.Data.Maybe.Base.C30 (coe v2)
      _ -> MAlonzo.RTE.mazUnreachableError
name494 = "Data.List.Base.last"
d494 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> MAlonzo.Code.Data.Maybe.Base.T22
d494 v0 v1 v2 = du494 v2
du494 :: [AgdaAny] -> MAlonzo.Code.Data.Maybe.Base.T22
du494 v0
  = case coe v0 of
      [] -> coe MAlonzo.Code.Data.Maybe.Base.C26
      (:) v1 v2
        -> let v3 = coe du494 (coe v2) in
           case coe v2 of
             [] -> coe MAlonzo.Code.Data.Maybe.Base.C30 (coe v1)
             _ -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name500 = "Data.List.Base.take"
d500 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> [AgdaAny] -> [AgdaAny]
d500 v0 v1 v2 v3 = du500 v2 v3
du500 :: Integer -> [AgdaAny] -> [AgdaAny]
du500 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Agda.Builtin.List.C16
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             [] -> coe v1
             (:) v3 v4
               -> coe
                    MAlonzo.Code.Agda.Builtin.List.C22 (coe v3)
                    (coe du500 (coe v2) (coe v4))
             _ -> MAlonzo.RTE.mazUnreachableError
name512 = "Data.List.Base.drop"
d512 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> [AgdaAny] -> [AgdaAny]
d512 v0 v1 v2 v3 = du512 v2 v3
du512 :: Integer -> [AgdaAny] -> [AgdaAny]
du512 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             [] -> coe v1
             (:) v3 v4 -> coe du512 (coe v2) (coe v4)
             _ -> MAlonzo.RTE.mazUnreachableError
name524 = "Data.List.Base.splitAt"
d524 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d524 v0 v1 v2 v3 = du524 v2 v3
du524 ::
  Integer -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du524 v0 v1
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C32
             (coe MAlonzo.Code.Agda.Builtin.List.C16) (coe v1)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             [] -> coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v1) (coe v1)
             (:) v3 v4
               -> let v5 = coe du524 (coe v2) (coe v4) in
                  case coe v5 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C32 v6 v7
                      -> coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C32
                           (coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v3) (coe v6)) (coe v7)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
name552 = "Data.List.Base.takeWhile"
d552 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> [AgdaAny]
d552 v0 v1 v2 v3 v4 v5 = du552 v4 v5
du552 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> [AgdaAny]
du552 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> let v4 = MAlonzo.Code.Relation.Nullary.d42 (coe v0 v2) in
           if coe v4
             then coe
                    MAlonzo.Code.Agda.Builtin.List.C22 (coe v2)
                    (coe du552 (coe v0) (coe v3))
             else coe MAlonzo.Code.Agda.Builtin.List.C16
      _ -> MAlonzo.RTE.mazUnreachableError
name580 = "Data.List.Base.dropWhile"
d580 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> [AgdaAny]
d580 v0 v1 v2 v3 v4 v5 = du580 v4 v5
du580 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> [AgdaAny]
du580 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> let v4 = MAlonzo.Code.Relation.Nullary.d42 (coe v0 v2) in
           if coe v4 then coe du580 (coe v0) (coe v3) else coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name608 = "Data.List.Base.filter"
d608 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> [AgdaAny]
d608 v0 v1 v2 v3 v4 v5 = du608 v4 v5
du608 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> [AgdaAny]
du608 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> let v4 = MAlonzo.Code.Relation.Nullary.d42 (coe v0 v2) in
           if coe v4
             then coe
                    MAlonzo.Code.Agda.Builtin.List.C22 (coe v2)
                    (coe du608 (coe v0) (coe v3))
             else coe du608 (coe v0) (coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
name636 = "Data.List.Base.partition"
d636 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d636 v0 v1 v2 v3 v4 v5 = du636 v4 v5
du636 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du636 v0 v1
  = case coe v1 of
      [] -> coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v1) (coe v1)
      (:) v2 v3
        -> let v4 = MAlonzo.Code.Relation.Nullary.d42 (coe v0 v2) in
           let v5 = coe du636 (coe v0) (coe v3) in
           if coe v4
             then case coe v5 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C32 v6 v7
                      -> coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C32
                           (coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v2) (coe v6)) (coe v7)
                    _ -> MAlonzo.RTE.mazUnreachableError
             else (case coe v5 of
                     MAlonzo.Code.Agda.Builtin.Sigma.C32 v6 v7
                       -> coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v6)
                            (coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v2) (coe v7))
                     _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
name672 = "Data.List.Base.span"
d672 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d672 v0 v1 v2 v3 v4 v5 = du672 v4 v5
du672 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du672 v0 v1
  = case coe v1 of
      [] -> coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v1) (coe v1)
      (:) v2 v3
        -> let v4 = MAlonzo.Code.Relation.Nullary.d42 (coe v0 v2) in
           if coe v4
             then coe
                    MAlonzo.Code.Data.Product.du148
                    (coe
                       (\ v5 -> coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v2) (coe v5)))
                    (coe (\ v5 v6 -> v6)) (coe du672 (coe v0) (coe v3))
             else coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C32
                    (coe MAlonzo.Code.Agda.Builtin.List.C16) (coe v1)
      _ -> MAlonzo.RTE.mazUnreachableError
name702 = "Data.List.Base.break"
d702 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d702 v0 v1 v2 v3 v4 = du702 v4
du702 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du702 v0
  = coe
      du672 (coe MAlonzo.Code.Relation.Unary.Properties.du74 (coe v0))
name708 = "Data.List.Base.derun"
d708 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> [AgdaAny]
d708 v0 v1 v2 v3 v4 v5 = du708 v4 v5
du708 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> [AgdaAny]
du708 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> case coe v3 of
             [] -> coe v1
             (:) v4 v5
               -> let v6 = MAlonzo.Code.Relation.Nullary.d42 (coe v0 v2 v4) in
                  let v7 = coe du708 (coe v0) (coe v3) in
                  if coe v6
                    then coe v7
                    else coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v2) (coe v7)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name750 = "Data.List.Base.deduplicate"
d750 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> [AgdaAny]
d750 v0 v1 v2 v3 v4 v5 = du750 v4 v5
du750 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> [AgdaAny]
du750 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C22 (coe v2)
             (coe
                du608
                (coe
                   (\ v4 ->
                      coe
                        MAlonzo.Code.Relation.Nullary.Negation.Core.du64 (coe v0 v2 v4)))
                (coe du750 (coe v0) (coe v3)))
      _ -> MAlonzo.RTE.mazUnreachableError
name762 = "Data.List.Base._[_]%=_"
d762 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Fin.Base.T6 -> (AgdaAny -> AgdaAny) -> [AgdaAny]
d762 v0 v1 v2 v3 v4 = du762 v2 v3 v4
du762 ::
  [AgdaAny] ->
  MAlonzo.Code.Data.Fin.Base.T6 -> (AgdaAny -> AgdaAny) -> [AgdaAny]
du762 v0 v1 v2
  = case coe v0 of
      (:) v3 v4
        -> case coe v1 of
             MAlonzo.Code.Data.Fin.Base.C10
               -> coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v2 v3) (coe v4)
             MAlonzo.Code.Data.Fin.Base.C16 v6
               -> coe
                    MAlonzo.Code.Agda.Builtin.List.C22 (coe v3)
                    (coe du762 (coe v4) (coe v6) (coe v2))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name780 = "Data.List.Base._[_]∷=_"
d780 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] -> MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny -> [AgdaAny]
d780 v0 v1 v2 v3 v4 = du780 v2 v3 v4
du780 ::
  [AgdaAny] -> MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny -> [AgdaAny]
du780 v0 v1 v2 = coe du762 (coe v0) (coe v1) (coe (\ v3 -> v2))
name790 = "Data.List.Base._─_"
d790 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> MAlonzo.Code.Data.Fin.Base.T6 -> [AgdaAny]
d790 v0 v1 v2 v3 = du790 v2 v3
du790 :: [AgdaAny] -> MAlonzo.Code.Data.Fin.Base.T6 -> [AgdaAny]
du790 v0 v1
  = case coe v0 of
      (:) v2 v3
        -> case coe v1 of
             MAlonzo.Code.Data.Fin.Base.C10 -> coe v3
             MAlonzo.Code.Data.Fin.Base.C16 v5
               -> coe
                    MAlonzo.Code.Agda.Builtin.List.C22 (coe v2)
                    (coe du790 (coe v3) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name802 = "Data.List.Base.reverseAcc"
d802 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d802 v0 v1 = du802
du802 :: [AgdaAny] -> [AgdaAny] -> [AgdaAny]
du802
  = coe
      du254
      (coe
         (\ v0 v1 ->
            coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v1) (coe v0)))
name804 = "Data.List.Base.reverse"
d804 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> [AgdaAny] -> [AgdaAny]
d804 v0 v1 = du804
du804 :: [AgdaAny] -> [AgdaAny]
du804 = coe du802 (coe MAlonzo.Code.Agda.Builtin.List.C16)
name806 = "Data.List.Base._ʳ++_"
d806 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d806 v0 v1 v2 v3 = du806 v2 v3
du806 :: [AgdaAny] -> [AgdaAny] -> [AgdaAny]
du806 v0 v1 = coe du802 v1 v0
name808 = "Data.List.Base._∷ʳ_"
d808 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> AgdaAny -> [AgdaAny]
d808 v0 v1 v2 v3 = du808 v2 v3
du808 :: [AgdaAny] -> AgdaAny -> [AgdaAny]
du808 v0 v1
  = coe
      du60 (coe v0)
      (coe
         MAlonzo.Code.Agda.Builtin.List.C22 (coe v1)
         (coe MAlonzo.Code.Agda.Builtin.List.C16))
name814 = "Data.List.Base._?∷_"
d814 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Data.Maybe.Base.T22 -> [AgdaAny] -> [AgdaAny]
d814 v0 v1 = du814
du814 :: MAlonzo.Code.Data.Maybe.Base.T22 -> [AgdaAny] -> [AgdaAny]
du814
  = coe
      MAlonzo.Code.Data.Maybe.Base.du62
      (coe MAlonzo.Code.Agda.Builtin.List.C22) (\ v0 -> v0)
name816 = "Data.List.Base._∷ʳ?_"
d816 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> MAlonzo.Code.Data.Maybe.Base.T22 -> [AgdaAny]
d816 v0 v1 v2 v3 = du816 v2 v3
du816 :: [AgdaAny] -> MAlonzo.Code.Data.Maybe.Base.T22 -> [AgdaAny]
du816 v0 v1
  = coe MAlonzo.Code.Data.Maybe.Base.du62 (coe du808 (coe v0)) v0 v1
name828 = "Data.List.Base.InitLast"
d828 a0 a1 a2 = ()
data T828 = C832 | C838 [AgdaAny] AgdaAny
name842 = "Data.List.Base.initLast"
d842 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> [AgdaAny] -> T828
d842 v0 v1 v2 = du842 v2
du842 :: [AgdaAny] -> T828
du842 v0
  = case coe v0 of
      [] -> coe C832
      (:) v1 v2
        -> let v3 = coe du842 (coe v2) in
           case coe v3 of
             C832 -> coe C838 (coe MAlonzo.Code.Agda.Builtin.List.C16) (coe v1)
             C838 v4 v5
               -> coe
                    C838 (coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v1) (coe v4))
                    (coe v5)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name864 = "Data.List.Base.unsnoc"
d864 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> MAlonzo.Code.Data.Maybe.Base.T22
d864 v0 v1 v2 = du864 v2
du864 :: [AgdaAny] -> MAlonzo.Code.Data.Maybe.Base.T22
du864 v0
  = let v1 = coe du842 (coe v0) in
    case coe v1 of
      C832 -> coe MAlonzo.Code.Data.Maybe.Base.C26
      C838 v2 v3
        -> coe
             MAlonzo.Code.Data.Maybe.Base.C30
             (coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v2) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
name882 = "Data.List.Base.linesBy"
d882 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> [[AgdaAny]]
d882 v0 v1 v2 v3 v4 = du882 v4
du882 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> [[AgdaAny]]
du882 v0
  = coe du892 (coe v0) (coe MAlonzo.Code.Data.Maybe.Base.C26)
name892 = "Data.List.Base._.go"
d892 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  MAlonzo.Code.Data.Maybe.Base.T22 -> [AgdaAny] -> [[AgdaAny]]
d892 v0 v1 v2 v3 v4 v5 v6 = du892 v4 v5 v6
du892 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  MAlonzo.Code.Data.Maybe.Base.T22 -> [AgdaAny] -> [[AgdaAny]]
du892 v0 v1 v2
  = case coe v2 of
      []
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du62
             (\ v3 ->
                coe MAlonzo.Code.Agda.Builtin.List.C22 (coe du804 v3) (coe v2))
             v2 v1
      (:) v3 v4
        -> let v5 = MAlonzo.Code.Relation.Nullary.d42 (coe v0 v3) in
           if coe v5
             then coe
                    MAlonzo.Code.Agda.Builtin.List.C22
                    (coe
                       du804
                       (coe
                          MAlonzo.Code.Data.Maybe.Base.du64
                          (coe MAlonzo.Code.Agda.Builtin.List.C16) v1))
                    (coe
                       du892 (coe v0) (coe MAlonzo.Code.Data.Maybe.Base.C26) (coe v4))
             else coe
                    du892 (coe v0)
                    (coe
                       MAlonzo.Code.Data.Maybe.Base.C30
                       (coe
                          MAlonzo.Code.Agda.Builtin.List.C22 (coe v3)
                          (coe
                             MAlonzo.Code.Data.Maybe.Base.du64
                             (coe MAlonzo.Code.Agda.Builtin.List.C16) v1)))
                    (coe v4)
      _ -> MAlonzo.RTE.mazUnreachableError
name920 = "Data.List.Base.wordsBy"
d920 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> [[AgdaAny]]
d920 v0 v1 v2 v3 v4 = du920 v4
du920 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> [[AgdaAny]]
du920 v0
  = coe du938 (coe v0) (coe MAlonzo.Code.Agda.Builtin.List.C16)
name930 = "Data.List.Base._.cons"
d930 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> [[AgdaAny]] -> [[AgdaAny]]
d930 v0 v1 v2 v3 v4 v5 v6 = du930 v5 v6
du930 :: [AgdaAny] -> [[AgdaAny]] -> [[AgdaAny]]
du930 v0 v1
  = let v2
          = coe MAlonzo.Code.Agda.Builtin.List.C22 (coe du804 v0) (coe v1) in
    case coe v0 of
      [] -> coe v1
      _ -> coe v2
name938 = "Data.List.Base._.go"
d938 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> [AgdaAny] -> [[AgdaAny]]
d938 v0 v1 v2 v3 v4 v5 v6 = du938 v4 v5 v6
du938 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> [AgdaAny] -> [[AgdaAny]]
du938 v0 v1 v2
  = case coe v2 of
      [] -> coe du930 (coe v1) (coe v2)
      (:) v3 v4
        -> let v5 = MAlonzo.Code.Relation.Nullary.d42 (coe v0 v3) in
           if coe v5
             then coe
                    du930 (coe v1)
                    (coe
                       du938 (coe v0) (coe MAlonzo.Code.Agda.Builtin.List.C16) (coe v4))
             else coe
                    du938 (coe v0)
                    (coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v3) (coe v1)) (coe v4)
      _ -> MAlonzo.RTE.mazUnreachableError
name964 = "Data.List.Base.gfilter"
d964 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  [AgdaAny] -> [AgdaAny]
d964 v0 v1 v2 v3 v4 v5 = coe du32 v4 v5
name966 = "Data.List.Base.boolFilter"
d966 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> Bool) -> [AgdaAny] -> [AgdaAny]
d966 v0 v1 v2 = du966 v2
du966 :: (AgdaAny -> Bool) -> [AgdaAny] -> [AgdaAny]
du966 v0
  = coe
      du32
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Data.Bool.Base.du42 (coe v0 v1)
              (coe MAlonzo.Code.Data.Maybe.Base.C30 (coe v1))
              (coe MAlonzo.Code.Data.Maybe.Base.C26)))
name972 = "Data.List.Base.boolPartition"
d972 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> Bool) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d972 v0 v1 v2 v3 = du972 v2 v3
du972 ::
  (AgdaAny -> Bool) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du972 v0 v1
  = case coe v1 of
      [] -> coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v1) (coe v1)
      (:) v2 v3
        -> let v4 = coe v0 v2 in
           let v5 = coe du972 (coe v0) (coe v3) in
           if coe v4
             then case coe v5 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C32 v6 v7
                      -> coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C32
                           (coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v2) (coe v6)) (coe v7)
                    _ -> MAlonzo.RTE.mazUnreachableError
             else (case coe v5 of
                     MAlonzo.Code.Agda.Builtin.Sigma.C32 v6 v7
                       -> coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v6)
                            (coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v2) (coe v7))
                     _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
name1006 = "Data.List.Base.boolTakeWhile"
d1006 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> Bool) -> [AgdaAny] -> [AgdaAny]
d1006 v0 v1 v2 v3 = du1006 v2 v3
du1006 :: (AgdaAny -> Bool) -> [AgdaAny] -> [AgdaAny]
du1006 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> let v4 = coe v0 v2 in
           if coe v4
             then coe
                    MAlonzo.Code.Agda.Builtin.List.C22 (coe v2)
                    (coe du1006 (coe v0) (coe v3))
             else coe MAlonzo.Code.Agda.Builtin.List.C16
      _ -> MAlonzo.RTE.mazUnreachableError
name1032 = "Data.List.Base.boolDropWhile"
d1032 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> Bool) -> [AgdaAny] -> [AgdaAny]
d1032 v0 v1 v2 v3 = du1032 v2 v3
du1032 :: (AgdaAny -> Bool) -> [AgdaAny] -> [AgdaAny]
du1032 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> let v4 = coe v0 v2 in
           if coe v4 then coe du1032 (coe v0) (coe v3) else coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name1058 = "Data.List.Base.boolSpan"
d1058 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> Bool) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1058 v0 v1 v2 v3 = du1058 v2 v3
du1058 ::
  (AgdaAny -> Bool) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1058 v0 v1
  = case coe v1 of
      [] -> coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v1) (coe v1)
      (:) v2 v3
        -> let v4 = coe v0 v2 in
           if coe v4
             then coe
                    MAlonzo.Code.Data.Product.du148
                    (coe
                       (\ v5 -> coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v2) (coe v5)))
                    (coe (\ v5 v6 -> v6)) (coe du1058 (coe v0) (coe v3))
             else coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C32
                    (coe MAlonzo.Code.Agda.Builtin.List.C16) (coe v1)
      _ -> MAlonzo.RTE.mazUnreachableError
name1086 = "Data.List.Base.boolBreak"
d1086 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> Bool) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1086 v0 v1 v2 = du1086 v2
du1086 ::
  (AgdaAny -> Bool) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1086 v0
  = coe
      du1058 (coe (\ v1 -> MAlonzo.Code.Data.Bool.Base.d22 (coe v0 v1)))
name1094 = "Data.List.Base._∷ʳ'_"
d1094 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> AgdaAny -> T828
d1094 v0 v1 = du1094
du1094 :: [AgdaAny] -> AgdaAny -> T828
du1094 = coe C838
