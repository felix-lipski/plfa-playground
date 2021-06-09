{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Binary.PropositionalEquality.Core where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Empty

name22 = "Relation.Binary.PropositionalEquality.Core._≢_"
d22 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> AgdaAny -> AgdaAny -> ()
d22 = erased
name38 = "Relation.Binary.PropositionalEquality.Core.cong"
d38 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d38 = erased
name46 = "Relation.Binary.PropositionalEquality.Core.cong′"
d46 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d46 = erased
name54 = "Relation.Binary.PropositionalEquality.Core.icong"
d54 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d54 = erased
name60 = "Relation.Binary.PropositionalEquality.Core.icong′"
d60 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d60 = erased
name72 = "Relation.Binary.PropositionalEquality.Core.cong₂"
d72 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d72 = erased
name88 = "Relation.Binary.PropositionalEquality.Core.cong-app"
d88 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d88 = erased
name92 = "Relation.Binary.PropositionalEquality.Core.sym"
d92 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d92 = erased
name94 = "Relation.Binary.PropositionalEquality.Core.trans"
d94 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d94 = erased
name98 = "Relation.Binary.PropositionalEquality.Core.subst"
d98 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny -> AgdaAny
d98 v0 v1 v2 v3 v4 v5 v6 v7 = du98 v7
du98 :: AgdaAny -> AgdaAny
du98 v0 = coe v0
name114 = "Relation.Binary.PropositionalEquality.Core.subst₂"
d114 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny -> AgdaAny
d114 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 = du114 v12
du114 :: AgdaAny -> AgdaAny
du114 v0 = coe v0
name120 = "Relation.Binary.PropositionalEquality.Core.resp"
d120 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny -> AgdaAny
d120 v0 v1 v2 v3 v4 v5 v6 v7 = du120 v7
du120 :: AgdaAny -> AgdaAny
du120 v0 = coe v0
name128 = "Relation.Binary.PropositionalEquality.Core.respˡ"
d128 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny -> AgdaAny
d128 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du128 v8
du128 :: AgdaAny -> AgdaAny
du128 v0 = coe v0
name136 = "Relation.Binary.PropositionalEquality.Core.respʳ"
d136 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny -> AgdaAny
d136 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du136 v8
du136 :: AgdaAny -> AgdaAny
du136 v0 = coe v0
name144 = "Relation.Binary.PropositionalEquality.Core.resp₂"
d144 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d144 v0 v1 v2 v3 = du144
du144 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
du144
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe (\ v0 v1 v2 v3 v4 -> v4))
      (coe (\ v0 v1 v2 v3 v4 -> v4))
name148 = "Relation.Binary.PropositionalEquality.Core.≢-sym"
d148 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (MAlonzo.Code.Agda.Builtin.Equality.T12 ->
   MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d148 = erased
name162
  = "Relation.Binary.PropositionalEquality.Core.≡-Reasoning.begin_"
d162 ::
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d162 = erased
name170
  = "Relation.Binary.PropositionalEquality.Core.≡-Reasoning._≡⟨⟩_"
d170 ::
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d170 = erased
name180
  = "Relation.Binary.PropositionalEquality.Core.≡-Reasoning.step-≡"
d180 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d180 = erased
name192
  = "Relation.Binary.PropositionalEquality.Core.≡-Reasoning.step-≡˘"
d192 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d192 = erased
name200
  = "Relation.Binary.PropositionalEquality.Core.≡-Reasoning._∎"
d200 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d200 = erased