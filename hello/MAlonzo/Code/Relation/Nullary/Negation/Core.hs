{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Nullary.Negation.Core where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Nullary

name24 = "Relation.Nullary.Negation.Core.contradiction"
d24 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> AgdaAny -> (AgdaAny -> MAlonzo.Code.Data.Empty.T4) -> AgdaAny
d24 v0 v1 v2 v3 v4 v5 = du24 v2
du24 :: MAlonzo.Code.Agda.Primitive.T4 -> AgdaAny
du24 v0 = coe MAlonzo.Code.Data.Empty.d10 v0 erased erased
name30 = "Relation.Nullary.Negation.Core.contradiction₂"
d30 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) -> AgdaAny
d30 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du30 v4 v6
du30 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Data.Sum.Base.T30 -> AgdaAny
du30 v0 v1
  = coe
      seq (coe v1) (coe MAlonzo.Code.Data.Empty.d10 v0 erased erased)
name44 = "Relation.Nullary.Negation.Core.contraposition"
d44 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  AgdaAny -> MAlonzo.Code.Data.Empty.T4
d44 = erased
name56 = "Relation.Nullary.Negation.Core.¬-reflects"
d56 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Bool ->
  MAlonzo.Code.Relation.Nullary.T14 ->
  MAlonzo.Code.Relation.Nullary.T14
d56 v0 v1 v2 v3 = du56 v3
du56 ::
  MAlonzo.Code.Relation.Nullary.T14 ->
  MAlonzo.Code.Relation.Nullary.T14
du56 v0
  = case coe v0 of
      MAlonzo.Code.Relation.Nullary.C22 v1
        -> coe MAlonzo.Code.Relation.Nullary.C26
      MAlonzo.Code.Relation.Nullary.C26
        -> coe MAlonzo.Code.Relation.Nullary.C22 erased
      _ -> MAlonzo.RTE.mazUnreachableError
name64 = "Relation.Nullary.Negation.Core.¬?"
d64 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Nullary.T32 ->
  MAlonzo.Code.Relation.Nullary.T32
d64 v0 v1 v2 = du64 v2
du64 ::
  MAlonzo.Code.Relation.Nullary.T32 ->
  MAlonzo.Code.Relation.Nullary.T32
du64 v0
  = coe
      MAlonzo.Code.Relation.Nullary.C46
      (coe
         MAlonzo.Code.Data.Bool.Base.d22
         (coe MAlonzo.Code.Relation.Nullary.d42 (coe v0)))
      (coe du56 (coe MAlonzo.Code.Relation.Nullary.d44 (coe v0)))
name82 = "Relation.Nullary.Negation.Core._.∃⟶¬∀¬"
d82 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Empty.T4
d82 = erased
name88 = "Relation.Nullary.Negation.Core._.∀⟶¬∃¬"
d88 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> MAlonzo.Code.Data.Empty.T4
d88 = erased
name100 = "Relation.Nullary.Negation.Core._.¬∃⟶∀¬"
d100 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
   MAlonzo.Code.Data.Empty.T4) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4
d100 = erased
name106 = "Relation.Nullary.Negation.Core._.∀¬⟶¬∃"
d106 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> MAlonzo.Code.Data.Empty.T4
d106 = erased
name112 = "Relation.Nullary.Negation.Core._.∃¬⟶¬∀"
d112 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Data.Empty.T4
d112 = erased
name114 = "Relation.Nullary.Negation.Core.¬¬-map"
d114 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  ((AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
   MAlonzo.Code.Data.Empty.T4) ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Empty.T4
d114 = erased
name118 = "Relation.Nullary.Negation.Core.Stable"
d118 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> ()
d118 = erased
name122 = "Relation.Nullary.Negation.Core.stable"
d122 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  ((((AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
     MAlonzo.Code.Data.Empty.T4) ->
    AgdaAny) ->
   MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Empty.T4
d122 = erased
name128 = "Relation.Nullary.Negation.Core.negated-stable"
d128 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (((AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
    MAlonzo.Code.Data.Empty.T4) ->
   MAlonzo.Code.Data.Empty.T4) ->
  AgdaAny -> MAlonzo.Code.Data.Empty.T4
d128 = erased
