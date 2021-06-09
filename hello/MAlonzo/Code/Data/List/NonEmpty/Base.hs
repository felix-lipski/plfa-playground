{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Data.List.NonEmpty.Base where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Data.These.Base
import qualified MAlonzo.Code.Data.Vec.Base

name24 = "Data.List.NonEmpty.Base.List⁺"
d24 a0 a1 = ()
data T24 = C36 AgdaAny [AgdaAny]
name32 = "Data.List.NonEmpty.Base.List⁺.head"
d32 :: T24 -> AgdaAny
d32 v0
  = case coe v0 of
      C36 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name34 = "Data.List.NonEmpty.Base.List⁺.tail"
d34 :: T24 -> [AgdaAny]
d34 v0
  = case coe v0 of
      C36 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name38 = "Data.List.NonEmpty.Base.uncons"
d38 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> T24 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d38 v0 v1 v2 = du38 v2
du38 :: T24 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du38 v0
  = case coe v0 of
      C36 v1 v2
        -> coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v1) (coe v2)
      _ -> MAlonzo.RTE.mazUnreachableError
name44 = "Data.List.NonEmpty.Base.[_]"
d44 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> AgdaAny -> T24
d44 v0 v1 v2 = du44 v2
du44 :: AgdaAny -> T24
du44 v0 = coe C36 (coe v0) (coe MAlonzo.Code.Agda.Builtin.List.C16)
name48 = "Data.List.NonEmpty.Base._∷⁺_"
d48 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> AgdaAny -> T24 -> T24
d48 v0 v1 v2 v3 = du48 v2 v3
du48 :: AgdaAny -> T24 -> T24
du48 v0 v1
  = case coe v1 of
      C36 v2 v3
        -> coe
             C36 (coe v0)
             (coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v2) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
name56 = "Data.List.NonEmpty.Base.length"
d56 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> T24 -> Integer
d56 v0 v1 v2 = du56 v2
du56 :: T24 -> Integer
du56 v0
  = case coe v0 of
      C36 v1 v2
        -> coe
             addInt (coe (1 :: Integer))
             (coe MAlonzo.Code.Data.List.Base.du296 v2)
      _ -> MAlonzo.RTE.mazUnreachableError
name62 = "Data.List.NonEmpty.Base.toList"
d62 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> T24 -> [AgdaAny]
d62 v0 v1 v2 = du62 v2
du62 :: T24 -> [AgdaAny]
du62 v0
  = case coe v0 of
      C36 v1 v2
        -> coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v1) (coe v2)
      _ -> MAlonzo.RTE.mazUnreachableError
name68 = "Data.List.NonEmpty.Base.fromList"
d68 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> MAlonzo.Code.Data.Maybe.Base.T22
d68 v0 v1 v2 = du68 v2
du68 :: [AgdaAny] -> MAlonzo.Code.Data.Maybe.Base.T22
du68 v0
  = case coe v0 of
      [] -> coe MAlonzo.Code.Data.Maybe.Base.C26
      (:) v1 v2
        -> coe MAlonzo.Code.Data.Maybe.Base.C30 (coe C36 (coe v1) (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
name76 = "Data.List.NonEmpty.Base.fromVec"
d76 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> MAlonzo.Code.Data.Vec.Base.T24 -> T24
d76 v0 v1 v2 v3 = du76 v3
du76 :: MAlonzo.Code.Data.Vec.Base.T24 -> T24
du76 v0
  = case coe v0 of
      MAlonzo.Code.Data.Vec.Base.C36 v2 v3
        -> coe C36 (coe v2) (coe MAlonzo.Code.Data.Vec.Base.du652 (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
name84 = "Data.List.NonEmpty.Base.toVec"
d84 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> T24 -> MAlonzo.Code.Data.Vec.Base.T24
d84 v0 v1 v2 = du84 v2
du84 :: T24 -> MAlonzo.Code.Data.Vec.Base.T24
du84 v0
  = case coe v0 of
      C36 v1 v2
        -> coe
             MAlonzo.Code.Data.Vec.Base.C36 v1
             (coe MAlonzo.Code.Data.Vec.Base.du660 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
name94 = "Data.List.NonEmpty.Base.lift"
d94 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (Integer ->
   MAlonzo.Code.Data.Vec.Base.T24 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T14) ->
  T24 -> T24
d94 v0 v1 v2 v3 v4 v5 = du94 v4 v5
du94 ::
  (Integer ->
   MAlonzo.Code.Data.Vec.Base.T24 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T14) ->
  T24 -> T24
du94 v0 v1
  = coe
      du76
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe
            v0
            (coe
               MAlonzo.Code.Data.List.Base.du240
               (coe (\ v2 v3 -> addInt (coe (1 :: Integer)) (coe v3)))
               (coe (0 :: Integer)) (coe d34 (coe v1)))
            (coe du84 (coe v1))))
name100 = "Data.List.NonEmpty.Base.map"
d100 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny) -> T24 -> T24
d100 v0 v1 v2 v3 v4 v5 = du100 v4 v5
du100 :: (AgdaAny -> AgdaAny) -> T24 -> T24
du100 v0 v1
  = case coe v1 of
      C36 v2 v3
        -> coe
             C36 (coe v0 v2)
             (coe MAlonzo.Code.Data.List.Base.du22 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
name110 = "Data.List.NonEmpty.Base.replicate"
d110 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T12 ->
   MAlonzo.Code.Data.Empty.T4) ->
  AgdaAny -> T24
d110 v0 v1 v2 v3 v4 = du110 v2 v4
du110 :: Integer -> AgdaAny -> T24
du110 v0 v1
  = coe
      C36 (coe v1)
      (coe
         MAlonzo.Code.Data.List.Base.du306
         (coe MAlonzo.Code.Data.Nat.Base.d94 (coe v0)) (coe v1))
name118 = "Data.List.NonEmpty.Base.foldr"
d118 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> T24 -> AgdaAny
d118 v0 v1 v2 v3 v4 v5 v6 = du118 v4 v5 v6
du118 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> T24 -> AgdaAny
du118 v0 v1 v2
  = case coe v2 of
      C36 v3 v4 -> coe du136 (coe v0) (coe v1) (coe v3) (coe v4)
      _ -> MAlonzo.RTE.mazUnreachableError
name136 = "Data.List.NonEmpty.Base._.foldr′"
d136 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> [AgdaAny] -> AgdaAny
d136 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du136 v4 v5 v8 v9
du136 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> [AgdaAny] -> AgdaAny
du136 v0 v1 v2 v3
  = case coe v3 of
      [] -> coe v1 v2
      (:) v4 v5
        -> coe v0 v2 (coe du136 (coe v0) (coe v1) (coe v4) (coe v5))
      _ -> MAlonzo.RTE.mazUnreachableError
name146 = "Data.List.NonEmpty.Base.foldr₁"
d146 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny -> AgdaAny) -> T24 -> AgdaAny
d146 v0 v1 v2 = du146 v2
du146 :: (AgdaAny -> AgdaAny -> AgdaAny) -> T24 -> AgdaAny
du146 v0 = coe du118 (coe v0) (coe (\ v1 -> v1))
name150 = "Data.List.NonEmpty.Base.foldl"
d150 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> T24 -> AgdaAny
d150 v0 v1 v2 v3 v4 v5 v6 = du150 v4 v5 v6
du150 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> T24 -> AgdaAny
du150 v0 v1 v2
  = case coe v2 of
      C36 v3 v4
        -> coe
             MAlonzo.Code.Data.List.Base.du254 (coe v0) (coe v1 v3) (coe v4)
      _ -> MAlonzo.RTE.mazUnreachableError
name160 = "Data.List.NonEmpty.Base.foldl₁"
d160 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny -> AgdaAny) -> T24 -> AgdaAny
d160 v0 v1 v2 = du160 v2
du160 :: (AgdaAny -> AgdaAny -> AgdaAny) -> T24 -> AgdaAny
du160 v0 = coe du150 (coe v0) (coe (\ v1 -> v1))
name164 = "Data.List.NonEmpty.Base._⁺++⁺_"
d164 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> T24 -> T24 -> T24
d164 v0 v1 v2 v3 = du164 v2 v3
du164 :: T24 -> T24 -> T24
du164 v0 v1
  = case coe v0 of
      C36 v2 v3
        -> case coe v1 of
             C36 v4 v5
               -> coe
                    C36 (coe v2)
                    (coe
                       MAlonzo.Code.Data.List.Base.du60 (coe v3)
                       (coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v4) (coe v5)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name174 = "Data.List.NonEmpty.Base._⁺++_"
d174 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> T24 -> [AgdaAny] -> T24
d174 v0 v1 v2 v3 = du174 v2 v3
du174 :: T24 -> [AgdaAny] -> T24
du174 v0 v1
  = case coe v0 of
      C36 v2 v3
        -> coe
             C36 (coe v2)
             (coe MAlonzo.Code.Data.List.Base.du60 (coe v3) (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
name182 = "Data.List.NonEmpty.Base._++⁺_"
d182 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> [AgdaAny] -> T24 -> T24
d182 v0 v1 v2 v3 = du182 v2 v3
du182 :: [AgdaAny] -> T24 -> T24
du182 v0 v1
  = coe
      MAlonzo.Code.Data.List.Base.du240 (coe du48) (coe v1) (coe v0)
name188 = "Data.List.NonEmpty.Base.concat"
d188 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> T24 -> T24
d188 v0 v1 v2 = du188 v2
du188 :: T24 -> T24
du188 v0
  = case coe v0 of
      C36 v1 v2
        -> coe
             du174 (coe v1)
             (coe
                MAlonzo.Code.Data.List.Base.du268
                (coe MAlonzo.Code.Data.List.Base.du22 (coe du62) (coe v2)))
      _ -> MAlonzo.RTE.mazUnreachableError
name194 = "Data.List.NonEmpty.Base.concatMap"
d194 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> T24) -> T24 -> T24
d194 v0 v1 v2 v3 v4 v5 = du194 v4 v5
du194 :: (AgdaAny -> T24) -> T24 -> T24
du194 v0 v1 = coe du188 (coe du100 (coe v0) (coe v1))
name198 = "Data.List.NonEmpty.Base.reverse"
d198 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> T24 -> T24
d198 v0 v1 = du198
du198 :: T24 -> T24
du198
  = coe
      du94
      (coe
         (\ v0 v1 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v0)
              (coe MAlonzo.Code.Data.Vec.Base.du668 v1)))
name200 = "Data.List.NonEmpty.Base.alignWith"
d200 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (MAlonzo.Code.Data.These.Base.T38 -> AgdaAny) -> T24 -> T24 -> T24
d200 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du200 v6 v7 v8
du200 ::
  (MAlonzo.Code.Data.These.Base.T38 -> AgdaAny) -> T24 -> T24 -> T24
du200 v0 v1 v2
  = case coe v1 of
      C36 v3 v4
        -> case coe v2 of
             C36 v5 v6
               -> coe
                    C36
                    (coe v0 (coe MAlonzo.Code.Data.These.Base.C52 (coe v3) (coe v5)))
                    (coe MAlonzo.Code.Data.List.Base.du112 (coe v0) (coe v4) (coe v6))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name212 = "Data.List.NonEmpty.Base.zipWith"
d212 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny -> AgdaAny) -> T24 -> T24 -> T24
d212 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du212 v6 v7 v8
du212 :: (AgdaAny -> AgdaAny -> AgdaAny) -> T24 -> T24 -> T24
du212 v0 v1 v2
  = case coe v1 of
      C36 v3 v4
        -> case coe v2 of
             C36 v5 v6
               -> coe
                    C36 (coe v0 v3 v5)
                    (coe MAlonzo.Code.Data.List.Base.du132 (coe v0) (coe v4) (coe v6))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name224 = "Data.List.NonEmpty.Base.unalignWith"
d224 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Data.These.Base.T38) ->
  T24 -> MAlonzo.Code.Data.These.Base.T38
d224 v0 v1 v2 v3 v4 v5 v6 = du224 v6
du224 ::
  (AgdaAny -> MAlonzo.Code.Data.These.Base.T38) ->
  T24 -> MAlonzo.Code.Data.These.Base.T38
du224 v0
  = coe
      du118
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Data.These.Base.du130 (coe du236) (coe du236)
              (coe v0 v1)))
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Data.These.Base.du60
              (coe
                 (\ v2 ->
                    coe C36 (coe v2) (coe MAlonzo.Code.Agda.Builtin.List.C16)))
              (coe
                 (\ v2 ->
                    coe C36 (coe v2) (coe MAlonzo.Code.Agda.Builtin.List.C16)))
              (coe v0 v1)))
name236 = "Data.List.NonEmpty.Base._.mcons"
d236 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Data.These.Base.T38) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Data.These.Base.T38 -> T24
d236 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du236
du236 :: MAlonzo.Code.Data.These.Base.T38 -> T24
du236
  = coe
      MAlonzo.Code.Data.These.Base.du92
      (coe
         (\ v0 ->
            coe C36 (coe v0) (coe MAlonzo.Code.Agda.Builtin.List.C16)))
      (coe (\ v0 -> v0)) (coe du48)
name238 = "Data.List.NonEmpty.Base.unzipWith"
d238 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14) ->
  T24 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d238 v0 v1 v2 v3 v4 v5 v6 v7 = du238 v6 v7
du238 ::
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14) ->
  T24 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du238 v0 v1
  = case coe v1 of
      C36 v2 v3
        -> coe
             MAlonzo.Code.Data.Product.du218 (coe C36)
             (coe (\ v4 v5 -> coe C36)) (coe v0 v2)
             (coe MAlonzo.Code.Data.List.Base.du194 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
name246 = "Data.List.NonEmpty.Base.align"
d246 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Agda.Primitive.T4 -> () -> T24 -> T24 -> T24
d246 v0 v1 v2 v3 = du246
du246 :: T24 -> T24 -> T24
du246 = coe du200 (coe (\ v0 -> v0))
name248 = "Data.List.NonEmpty.Base.zip"
d248 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Agda.Primitive.T4 -> () -> T24 -> T24 -> T24
d248 v0 v1 v2 v3 = du248
du248 :: T24 -> T24 -> T24
du248 = coe du212 (coe MAlonzo.Code.Agda.Builtin.Sigma.C32)
name250 = "Data.List.NonEmpty.Base.unalign"
d250 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> T24 -> MAlonzo.Code.Data.These.Base.T38
d250 v0 v1 v2 v3 = du250
du250 :: T24 -> MAlonzo.Code.Data.These.Base.T38
du250 = coe du224 (coe (\ v0 -> v0))
name252 = "Data.List.NonEmpty.Base.unzip"
d252 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> T24 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d252 v0 v1 v2 v3 = du252
du252 :: T24 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du252 = coe du238 (coe (\ v0 -> v0))
name254 = "Data.List.NonEmpty.Base._∷ʳ_"
d254 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> [AgdaAny] -> AgdaAny -> T24
d254 v0 v1 v2 v3 = du254 v2 v3
du254 :: [AgdaAny] -> AgdaAny -> T24
du254 v0 v1
  = case coe v0 of
      [] -> coe C36 (coe v1) (coe v0)
      (:) v2 v3
        -> coe
             C36 (coe v2)
             (coe MAlonzo.Code.Data.List.Base.du808 (coe v3) (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
name264 = "Data.List.NonEmpty.Base._⁺∷ʳ_"
d264 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> T24 -> AgdaAny -> T24
d264 v0 v1 v2 v3 = du264 v2 v3
du264 :: T24 -> AgdaAny -> T24
du264 v0 v1 = coe du254 (coe du62 (coe v0)) (coe v1)
name274 = "Data.List.NonEmpty.Base.SnocView"
d274 a0 a1 a2 = ()
data T274 = C282 [AgdaAny] AgdaAny
name286 = "Data.List.NonEmpty.Base.snocView"
d286 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> T24 -> T274
d286 v0 v1 v2 = du286 v2
du286 :: T24 -> T274
du286 v0
  = case coe v0 of
      C36 v1 v2
        -> let v3 = coe MAlonzo.Code.Data.List.Base.du842 (coe v2) in
           case coe v3 of
             MAlonzo.Code.Data.List.Base.C832
               -> coe C282 (coe MAlonzo.Code.Agda.Builtin.List.C16) (coe v1)
             MAlonzo.Code.Data.List.Base.C838 v4 v5
               -> coe
                    C282 (coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v1) (coe v4))
                    (coe v5)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name304 = "Data.List.NonEmpty.Base.last"
d304 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> T24 -> AgdaAny
d304 v0 v1 v2 = du304 v2
du304 :: T24 -> AgdaAny
du304 v0
  = let v1 = coe du286 (coe v0) in
    case coe v1 of
      C282 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
