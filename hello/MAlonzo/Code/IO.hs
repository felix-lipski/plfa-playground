{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.IO where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Coinduction
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Codata.Musical.Colist.Base
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.IO.Base
import qualified MAlonzo.Code.Level

name12 = "IO.Colist.sequence"
d12 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Codata.Musical.Colist.Base.T20
    AgdaAny MAlonzo.Code.IO.Base.T16 ->
  MAlonzo.Code.IO.Base.T16
d12 v0 v1 v2 = du12 v0 v2
du12 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Codata.Musical.Colist.Base.T20
    AgdaAny MAlonzo.Code.IO.Base.T16 ->
  MAlonzo.Code.IO.Base.T16
du12 v0 v1
  = case coe v1 of
      MAlonzo.Code.Codata.Musical.Colist.Base.C24
        -> coe MAlonzo.Code.IO.Base.C26 (coe v1)
      MAlonzo.Code.Codata.Musical.Colist.Base.C30 v2 v3
        -> coe
             MAlonzo.Code.IO.Base.C36 (coe du267 (coe v2))
             (coe du417 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
name22 = "IO.Colist.sequence′"
d22 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Codata.Musical.Colist.Base.T20
    AgdaAny MAlonzo.Code.IO.Base.T16 ->
  MAlonzo.Code.IO.Base.T16
d22 v0 v1 v2 = du22 v0 v2
du22 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Codata.Musical.Colist.Base.T20
    AgdaAny MAlonzo.Code.IO.Base.T16 ->
  MAlonzo.Code.IO.Base.T16
du22 v0 v1
  = case coe v1 of
      MAlonzo.Code.Codata.Musical.Colist.Base.C24
        -> coe
             MAlonzo.Code.IO.Base.C26
             (coe
                MAlonzo.Code.Level.C20 (coe MAlonzo.Code.Agda.Builtin.Unit.C8))
      MAlonzo.Code.Codata.Musical.Colist.Base.C30 v2 v3
        -> coe
             MAlonzo.Code.IO.Base.C44 (coe du1871 (coe v2))
             (coe du2015 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
name28 = "IO.Colist.mapM"
d28 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> MAlonzo.Code.IO.Base.T16) ->
  MAlonzo.Code.Codata.Musical.Colist.Base.T20 AgdaAny AgdaAny ->
  MAlonzo.Code.IO.Base.T16
d28 v0 v1 v2 v3 v4 v5 = du28 v0 v2 v4 v5
du28 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> MAlonzo.Code.IO.Base.T16) ->
  MAlonzo.Code.Codata.Musical.Colist.Base.T20 AgdaAny AgdaAny ->
  MAlonzo.Code.IO.Base.T16
du28 v0 v1 v2 v3
  = coe
      du12 (coe v1)
      (coe
         MAlonzo.Code.Codata.Musical.Colist.Base.du40 (coe v0) (coe ())
         (coe v2) (coe v3))
name32 = "IO.Colist.mapM′"
d32 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> MAlonzo.Code.IO.Base.T16) ->
  MAlonzo.Code.Codata.Musical.Colist.Base.T20 AgdaAny AgdaAny ->
  MAlonzo.Code.IO.Base.T16
d32 v0 v1 v2 v3 v4 v5 = du32 v0 v2 v4 v5
du32 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> MAlonzo.Code.IO.Base.T16) ->
  MAlonzo.Code.Codata.Musical.Colist.Base.T20 AgdaAny AgdaAny ->
  MAlonzo.Code.IO.Base.T16
du32 v0 v1 v2 v3
  = coe
      du22 (coe v1)
      (coe
         MAlonzo.Code.Codata.Musical.Colist.Base.du40 (coe v0) (coe ())
         (coe v2) (coe v3))
name38 = "IO.List.sequence"
d38 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [MAlonzo.Code.IO.Base.T16] -> MAlonzo.Code.IO.Base.T16
d38 v0 v1 v2 = du38 v2
du38 :: [MAlonzo.Code.IO.Base.T16] -> MAlonzo.Code.IO.Base.T16
du38 v0
  = case coe v0 of
      [] -> coe MAlonzo.Code.IO.Base.C26 (coe v0)
      (:) v1 v2
        -> coe
             MAlonzo.Code.IO.Base.du58
             (coe
                MAlonzo.Code.IO.Base.du58
                (coe
                   MAlonzo.Code.IO.Base.C26 (coe MAlonzo.Code.Agda.Builtin.List.C22))
                (coe v1))
             (coe du38 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
name44 = "IO.List.sequence′"
d44 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [MAlonzo.Code.IO.Base.T16] -> MAlonzo.Code.IO.Base.T16
d44 v0 v1 v2 = du44 v2
du44 :: [MAlonzo.Code.IO.Base.T16] -> MAlonzo.Code.IO.Base.T16
du44 v0
  = case coe v0 of
      []
        -> coe
             MAlonzo.Code.IO.Base.C26
             (coe
                MAlonzo.Code.Level.C20 (coe MAlonzo.Code.Agda.Builtin.Unit.C8))
      (:) v1 v2
        -> coe MAlonzo.Code.IO.Base.du82 (coe v1) (coe du44 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
name50 = "IO.List.mapM"
d50 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> MAlonzo.Code.IO.Base.T16) ->
  [AgdaAny] -> MAlonzo.Code.IO.Base.T16
d50 v0 v1 v2 v3 v4 v5 = du50 v4 v5
du50 ::
  (AgdaAny -> MAlonzo.Code.IO.Base.T16) ->
  [AgdaAny] -> MAlonzo.Code.IO.Base.T16
du50 v0 v1
  = coe du38 (coe MAlonzo.Code.Data.List.Base.du22 (coe v0) (coe v1))
name54 = "IO.List.mapM′"
d54 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> MAlonzo.Code.IO.Base.T16) ->
  [AgdaAny] -> MAlonzo.Code.IO.Base.T16
d54 v0 v1 v2 v3 v4 v5 = du54 v4 v5
du54 ::
  (AgdaAny -> MAlonzo.Code.IO.Base.T16) ->
  [AgdaAny] -> MAlonzo.Code.IO.Base.T16
du54 v0 v1
  = coe du44 (coe MAlonzo.Code.Data.List.Base.du22 (coe v0) (coe v1))
name267 = "IO.Colist._.♯-0"
d267 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.IO.Base.T16 ->
  MAlonzo.RTE.Infinity
    AgdaAny
    (MAlonzo.Code.Codata.Musical.Colist.Base.T20
       AgdaAny MAlonzo.Code.IO.Base.T16) ->
  MAlonzo.RTE.Infinity AgdaAny MAlonzo.Code.IO.Base.T16
d267 v0 v1 v2 v3 = du267 v2
du267 ::
  MAlonzo.Code.IO.Base.T16 ->
  MAlonzo.RTE.Infinity AgdaAny MAlonzo.Code.IO.Base.T16
du267 v0 = coe MAlonzo.Code.Agda.Builtin.Coinduction.C16 (coe v0)
name417 = "IO.Colist._.♯-1"
d417 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.IO.Base.T16 ->
  MAlonzo.RTE.Infinity
    AgdaAny
    (MAlonzo.Code.Codata.Musical.Colist.Base.T20
       AgdaAny MAlonzo.Code.IO.Base.T16) ->
  AgdaAny -> MAlonzo.RTE.Infinity AgdaAny MAlonzo.Code.IO.Base.T16
d417 v0 v1 v2 v3 v4 = du417 v0 v3 v4
du417 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.RTE.Infinity
    AgdaAny
    (MAlonzo.Code.Codata.Musical.Colist.Base.T20
       AgdaAny MAlonzo.Code.IO.Base.T16) ->
  AgdaAny -> MAlonzo.RTE.Infinity AgdaAny MAlonzo.Code.IO.Base.T16
du417 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C16
      (coe
         MAlonzo.Code.IO.Base.C36 (coe du615 (coe v0) (coe v1))
         (coe du903 (coe v2)))
name615 = "IO.Colist._._.♯-2"
d615 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.IO.Base.T16 ->
  MAlonzo.RTE.Infinity
    AgdaAny
    (MAlonzo.Code.Codata.Musical.Colist.Base.T20
       AgdaAny MAlonzo.Code.IO.Base.T16) ->
  AgdaAny -> MAlonzo.RTE.Infinity AgdaAny MAlonzo.Code.IO.Base.T16
d615 v0 v1 v2 v3 v4 = du615 v0 v3
du615 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.RTE.Infinity
    AgdaAny
    (MAlonzo.Code.Codata.Musical.Colist.Base.T20
       AgdaAny MAlonzo.Code.IO.Base.T16) ->
  MAlonzo.RTE.Infinity AgdaAny MAlonzo.Code.IO.Base.T16
du615 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C16
      (coe
         du12 (coe v0)
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v1)))
name903 = "IO.Colist._._.♯-3"
d903 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.IO.Base.T16 ->
  MAlonzo.RTE.Infinity
    AgdaAny
    (MAlonzo.Code.Codata.Musical.Colist.Base.T20
       AgdaAny MAlonzo.Code.IO.Base.T16) ->
  AgdaAny ->
  MAlonzo.Code.Codata.Musical.Colist.Base.T20 AgdaAny AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny MAlonzo.Code.IO.Base.T16
d903 v0 v1 v2 v3 v4 v5 = du903 v4 v5
du903 ::
  AgdaAny ->
  MAlonzo.Code.Codata.Musical.Colist.Base.T20 AgdaAny AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny MAlonzo.Code.IO.Base.T16
du903 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C16
      (coe
         MAlonzo.Code.IO.Base.C26
         (coe
            MAlonzo.Code.Codata.Musical.Colist.Base.C30 (coe v0)
            (coe du1165 (coe v1))))
name1165 = "IO.Colist._._._.♯-4"
d1165 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.IO.Base.T16 ->
  MAlonzo.RTE.Infinity
    AgdaAny
    (MAlonzo.Code.Codata.Musical.Colist.Base.T20
       AgdaAny MAlonzo.Code.IO.Base.T16) ->
  AgdaAny ->
  MAlonzo.Code.Codata.Musical.Colist.Base.T20 AgdaAny AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    (MAlonzo.Code.Codata.Musical.Colist.Base.T20 AgdaAny AgdaAny)
d1165 v0 v1 v2 v3 v4 v5 = du1165 v5
du1165 ::
  MAlonzo.Code.Codata.Musical.Colist.Base.T20 AgdaAny AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny
    (MAlonzo.Code.Codata.Musical.Colist.Base.T20 AgdaAny AgdaAny)
du1165 v0 = coe MAlonzo.Code.Agda.Builtin.Coinduction.C16 (coe v0)
name1871 = "IO.Colist._.♯-5"
d1871 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.IO.Base.T16 ->
  MAlonzo.RTE.Infinity
    AgdaAny
    (MAlonzo.Code.Codata.Musical.Colist.Base.T20
       AgdaAny MAlonzo.Code.IO.Base.T16) ->
  MAlonzo.RTE.Infinity AgdaAny MAlonzo.Code.IO.Base.T16
d1871 v0 v1 v2 v3 = du1871 v2
du1871 ::
  MAlonzo.Code.IO.Base.T16 ->
  MAlonzo.RTE.Infinity AgdaAny MAlonzo.Code.IO.Base.T16
du1871 v0 = coe MAlonzo.Code.Agda.Builtin.Coinduction.C16 (coe v0)
name2015 = "IO.Colist._.♯-6"
d2015 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.IO.Base.T16 ->
  MAlonzo.RTE.Infinity
    AgdaAny
    (MAlonzo.Code.Codata.Musical.Colist.Base.T20
       AgdaAny MAlonzo.Code.IO.Base.T16) ->
  MAlonzo.RTE.Infinity AgdaAny MAlonzo.Code.IO.Base.T16
d2015 v0 v1 v2 v3 = du2015 v0 v3
du2015 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.RTE.Infinity
    AgdaAny
    (MAlonzo.Code.Codata.Musical.Colist.Base.T20
       AgdaAny MAlonzo.Code.IO.Base.T16) ->
  MAlonzo.RTE.Infinity AgdaAny MAlonzo.Code.IO.Base.T16
du2015 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C16
      (coe
         du22 (coe v0)
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v1)))
