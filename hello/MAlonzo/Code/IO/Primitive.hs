{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.IO.Primitive where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.IO
import qualified MAlonzo.Code.Agda.Primitive

name8 = "IO.Primitive.return"
d8 ::
  forall xa.
    MAlonzo.Code.Agda.Primitive.T4 ->
    (forall xA. () -> xA -> MAlonzo.Code.Agda.Builtin.IO.T8 xa xA)
d8 = \_ _ -> return
name18 = "IO.Primitive._>>=_"
d18 ::
  forall xa.
    MAlonzo.Code.Agda.Primitive.T4 ->
    (forall xb.
       MAlonzo.Code.Agda.Primitive.T4 ->
       (forall xA.
          () ->
          (forall xB.
             () ->
             MAlonzo.Code.Agda.Builtin.IO.T8 xa xA ->
             (xA -> MAlonzo.Code.Agda.Builtin.IO.T8 xb xB) ->
             MAlonzo.Code.Agda.Builtin.IO.T8 xb xB)))
d18 = \_ _ _ _ -> (>>=)
