{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Codata.Musical.Colist.Base where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Coinduction
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Codata.Musical.Conat.Base
import qualified MAlonzo.Code.Data.List.NonEmpty.Base
import qualified MAlonzo.Code.Data.Maybe.Base

data AgdaColist a    = Nil | Cons a (MAlonzo.RTE.Inf (AgdaColist a))
type AgdaColist' l a = AgdaColist a
name20 = "Codata.Musical.Colist.Base.Colist"
d20 a0 a1 = ()
type T20 a0 a1 = AgdaColist' a0 a1
pattern C24 = Nil
pattern C30 a0 a1 = Cons a0 a1
check24 :: forall xa. forall xA. T20 xa xA
check24 = Nil
check30 ::
  forall xa.
    forall xA. xA -> MAlonzo.RTE.Infinity xa (T20 xa xA) -> T20 xa xA
check30 = Cons
cover20 :: AgdaColist' a1 a2 -> ()
cover20 x
  = case x of
      Nil -> ()
      Cons _ _ -> ()
name32 = "Codata.Musical.Colist.Base.null"
d32 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> T20 AgdaAny AgdaAny -> Bool
d32 v0 v1 v2 = du32 v2
du32 :: T20 AgdaAny AgdaAny -> Bool
du32 v0
  = case coe v0 of
      C24 -> coe MAlonzo.Code.Agda.Builtin.Bool.C10
      C30 v1 v2 -> coe MAlonzo.Code.Agda.Builtin.Bool.C8
      _ -> MAlonzo.RTE.mazUnreachableError
name34 = "Codata.Musical.Colist.Base.length"
d34 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T20 AgdaAny AgdaAny -> MAlonzo.Code.Codata.Musical.Conat.Base.T8
d34 v0 v1 v2 = du34 v0 v2
du34 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T20 AgdaAny AgdaAny -> MAlonzo.Code.Codata.Musical.Conat.Base.T8
du34 v0 v1
  = case coe v1 of
      C24 -> coe MAlonzo.Code.Codata.Musical.Conat.Base.C10
      C30 v2 v3
        -> coe
             MAlonzo.Code.Codata.Musical.Conat.Base.C14
             (coe du601 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
name40 = "Codata.Musical.Colist.Base.map"
d40 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) -> T20 AgdaAny AgdaAny -> T20 AgdaAny AgdaAny
d40 v0 v1 v2 v3 v4 v5 = du40 v0 v2 v4 v5
du40 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny) -> T20 AgdaAny AgdaAny -> T20 AgdaAny AgdaAny
du40 v0 v1 v2 v3
  = case coe v3 of
      C24 -> coe v3
      C30 v4 v5
        -> coe
             C30 (coe v2 v4) (coe du1265 (coe v0) (coe v1) (coe v2) (coe v5))
      _ -> MAlonzo.RTE.mazUnreachableError
name50 = "Codata.Musical.Colist.Base.fromList"
d50 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> T20 AgdaAny AgdaAny
d50 v0 v1 v2 = du50 v0 v2
du50 ::
  MAlonzo.Code.Agda.Primitive.T4 -> [AgdaAny] -> T20 AgdaAny AgdaAny
du50 v0 v1
  = case coe v1 of
      [] -> coe C24
      (:) v2 v3 -> coe C30 (coe v2) (coe du2013 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
name56 = "Codata.Musical.Colist.Base.replicate"
d56 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Codata.Musical.Conat.Base.T8 ->
  AgdaAny -> T20 AgdaAny AgdaAny
d56 v0 v1 v2 v3 = du56 v0 v2 v3
du56 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Codata.Musical.Conat.Base.T8 ->
  AgdaAny -> T20 AgdaAny AgdaAny
du56 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Codata.Musical.Conat.Base.C10 -> coe C24
      MAlonzo.Code.Codata.Musical.Conat.Base.C14 v3
        -> coe C30 (coe v2) (coe du2463 (coe v0) (coe v3) (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
name64 = "Codata.Musical.Colist.Base.lookup"
d64 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer -> T20 AgdaAny AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22
d64 v0 v1 v2 v3 = du64 v2 v3
du64 ::
  Integer -> T20 AgdaAny AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22
du64 v0 v1
  = case coe v1 of
      C24 -> coe MAlonzo.Code.Data.Maybe.Base.C26
      C30 v2 v3
        -> case coe v0 of
             0 -> coe MAlonzo.Code.Data.Maybe.Base.C30 (coe v2)
             _ -> let v4 = subInt (coe v0) (coe (1 :: Integer)) in
                  coe
                    du64 (coe v4)
                    (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
name78 = "Codata.Musical.Colist.Base._++_"
d78 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T20 AgdaAny AgdaAny -> T20 AgdaAny AgdaAny -> T20 AgdaAny AgdaAny
d78 v0 v1 v2 v3 = du78 v0 v2 v3
du78 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T20 AgdaAny AgdaAny -> T20 AgdaAny AgdaAny -> T20 AgdaAny AgdaAny
du78 v0 v1 v2
  = case coe v1 of
      C24 -> coe v2
      C30 v3 v4
        -> coe C30 (coe v3) (coe du3569 (coe v0) (coe v4) (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
name88 = "Codata.Musical.Colist.Base._⋎_"
d88 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T20 AgdaAny AgdaAny -> T20 AgdaAny AgdaAny -> T20 AgdaAny AgdaAny
d88 v0 v1 v2 v3 = du88 v0 v2 v3
du88 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T20 AgdaAny AgdaAny -> T20 AgdaAny AgdaAny -> T20 AgdaAny AgdaAny
du88 v0 v1 v2
  = case coe v1 of
      C24 -> coe v2
      C30 v3 v4
        -> coe C30 (coe v3) (coe du4157 (coe v0) (coe v4) (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
name98 = "Codata.Musical.Colist.Base.concat"
d98 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T20 AgdaAny MAlonzo.Code.Data.List.NonEmpty.Base.T24 ->
  T20 AgdaAny AgdaAny
d98 v0 v1 v2 = du98 v0 v2
du98 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T20 AgdaAny MAlonzo.Code.Data.List.NonEmpty.Base.T24 ->
  T20 AgdaAny AgdaAny
du98 v0 v1
  = case coe v1 of
      C24 -> coe v1
      C30 v2 v3
        -> case coe v2 of
             MAlonzo.Code.Data.List.NonEmpty.Base.C36 v4 v5
               -> case coe v5 of
                    [] -> coe C30 (coe v4) (coe du4797 (coe v0) (coe v3))
                    (:) v6 v7
                      -> coe
                           C30 (coe v4) (coe du5211 (coe v0) (coe v6) (coe v7) (coe v3))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name112 = "Codata.Musical.Colist.Base.[_]"
d112 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> AgdaAny -> T20 AgdaAny AgdaAny
d112 v0 v1 v2 = du112 v2
du112 :: AgdaAny -> T20 AgdaAny AgdaAny
du112 v0 = coe C30 (coe v0) (coe du5765)
name601 = "Codata.Musical.Colist.Base._.♯-0"
d601 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny (T20 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.Codata.Musical.Conat.Base.T8
d601 v0 v1 v2 v3 = du601 v0 v3
du601 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.RTE.Infinity AgdaAny (T20 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.Codata.Musical.Conat.Base.T8
du601 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C16
      (coe
         du34 (coe v0)
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v1)))
name1265 = "Codata.Musical.Colist.Base._.♯-1"
d1265 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny (T20 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny (T20 AgdaAny AgdaAny)
d1265 v0 v1 v2 v3 v4 v5 v6 = du1265 v0 v2 v4 v6
du1265 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny (T20 AgdaAny AgdaAny) ->
  MAlonzo.RTE.Infinity AgdaAny (T20 AgdaAny AgdaAny)
du1265 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C16
      (coe
         du40 (coe v0) (coe v1) (coe v2)
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v3)))
name2013 = "Codata.Musical.Colist.Base._.♯-2"
d2013 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  [AgdaAny] -> MAlonzo.RTE.Infinity AgdaAny (T20 AgdaAny AgdaAny)
d2013 v0 v1 v2 v3 = du2013 v0 v3
du2013 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  [AgdaAny] -> MAlonzo.RTE.Infinity AgdaAny (T20 AgdaAny AgdaAny)
du2013 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C16
      (coe du50 (coe v0) (coe v1))
name2463 = "Codata.Musical.Colist.Base._.♯-3"
d2463 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.Codata.Musical.Conat.Base.T8 ->
  AgdaAny -> MAlonzo.RTE.Infinity AgdaAny (T20 AgdaAny AgdaAny)
d2463 v0 v1 v2 v3 = du2463 v0 v2 v3
du2463 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.RTE.Infinity
    AgdaAny MAlonzo.Code.Codata.Musical.Conat.Base.T8 ->
  AgdaAny -> MAlonzo.RTE.Infinity AgdaAny (T20 AgdaAny AgdaAny)
du2463 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C16
      (coe
         du56 (coe v0)
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v1)) (coe v2))
name3569 = "Codata.Musical.Colist.Base._.♯-4"
d3569 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny (T20 AgdaAny AgdaAny) ->
  T20 AgdaAny AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny (T20 AgdaAny AgdaAny)
d3569 v0 v1 v2 v3 v4 = du3569 v0 v3 v4
du3569 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.RTE.Infinity AgdaAny (T20 AgdaAny AgdaAny) ->
  T20 AgdaAny AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny (T20 AgdaAny AgdaAny)
du3569 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C16
      (coe
         du78 (coe v0)
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v1)) (coe v2))
name4157 = "Codata.Musical.Colist.Base._.♯-5"
d4157 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny (T20 AgdaAny AgdaAny) ->
  T20 AgdaAny AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny (T20 AgdaAny AgdaAny)
d4157 v0 v1 v2 v3 v4 = du4157 v0 v3 v4
du4157 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.RTE.Infinity AgdaAny (T20 AgdaAny AgdaAny) ->
  T20 AgdaAny AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny (T20 AgdaAny AgdaAny)
du4157 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C16
      (coe
         du88 (coe v0) (coe v2)
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v1)))
name4797 = "Codata.Musical.Colist.Base._.♯-6"
d4797 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny (T20 AgdaAny MAlonzo.Code.Data.List.NonEmpty.Base.T24) ->
  MAlonzo.RTE.Infinity AgdaAny (T20 AgdaAny AgdaAny)
d4797 v0 v1 v2 v3 = du4797 v0 v3
du4797 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.RTE.Infinity
    AgdaAny (T20 AgdaAny MAlonzo.Code.Data.List.NonEmpty.Base.T24) ->
  MAlonzo.RTE.Infinity AgdaAny (T20 AgdaAny AgdaAny)
du4797 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C16
      (coe
         du98 (coe v0)
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v1)))
name5211 = "Codata.Musical.Colist.Base._.♯-7"
d5211 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.RTE.Infinity
    AgdaAny (T20 AgdaAny MAlonzo.Code.Data.List.NonEmpty.Base.T24) ->
  MAlonzo.RTE.Infinity AgdaAny (T20 AgdaAny AgdaAny)
d5211 v0 v1 v2 v3 v4 v5 = du5211 v0 v3 v4 v5
du5211 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.RTE.Infinity
    AgdaAny (T20 AgdaAny MAlonzo.Code.Data.List.NonEmpty.Base.T24) ->
  MAlonzo.RTE.Infinity AgdaAny (T20 AgdaAny AgdaAny)
du5211 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C16
      (coe
         du98 (coe v0)
         (coe
            C30
            (coe MAlonzo.Code.Data.List.NonEmpty.Base.C36 (coe v1) (coe v2))
            (coe v3)))
name5765 = "Codata.Musical.Colist.Base._.♯-8"
d5765 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> AgdaAny -> MAlonzo.RTE.Infinity AgdaAny (T20 AgdaAny AgdaAny)
d5765 v0 v1 v2 = du5765
du5765 :: MAlonzo.RTE.Infinity AgdaAny (T20 AgdaAny AgdaAny)
du5765 = coe MAlonzo.Code.Agda.Builtin.Coinduction.C16 (coe C24)
