{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.IO.Finite where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.IO
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.IO.Base
import qualified MAlonzo.Code.IO.Primitive
import qualified MAlonzo.Code.IO.Primitive.Finite
import qualified MAlonzo.Code.Level

name6 = "IO.Finite.getLine"
d6 :: MAlonzo.Code.IO.Base.T16
d6
  = coe
      MAlonzo.Code.IO.Base.C22 (coe MAlonzo.Code.IO.Primitive.Finite.d6)
name8 = "IO.Finite.readFile"
d8 ::
  MAlonzo.Code.Agda.Builtin.String.T6 -> MAlonzo.Code.IO.Base.T16
d8 v0
  = coe
      MAlonzo.Code.IO.Base.C22
      (coe MAlonzo.Code.IO.Primitive.Finite.d8 v0)
name12 = "IO.Finite.lift′"
d12 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Builtin.IO.T8
    AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.IO.Base.T16
d12 v0 v1
  = coe
      MAlonzo.Code.IO.Base.C22
      (coe
         MAlonzo.Code.IO.Primitive.d18 () v0 erased erased v1
         (\ v2 ->
            coe
              MAlonzo.Code.IO.Primitive.d8 v0 erased
              (coe
                 MAlonzo.Code.Level.C20 (coe MAlonzo.Code.Agda.Builtin.Unit.C8))))
name18 = "IO.Finite.writeFile"
d18 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6 -> MAlonzo.Code.IO.Base.T16
d18 v0 v1 v2
  = coe d12 (coe v0) (coe MAlonzo.Code.IO.Primitive.Finite.d10 v1 v2)
name24 = "IO.Finite.appendFile"
d24 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6 -> MAlonzo.Code.IO.Base.T16
d24 v0 v1 v2
  = coe d12 (coe v0) (coe MAlonzo.Code.IO.Primitive.Finite.d12 v1 v2)
name30 = "IO.Finite.putStr"
d30 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Builtin.String.T6 -> MAlonzo.Code.IO.Base.T16
d30 v0 v1
  = coe d12 (coe v0) (coe MAlonzo.Code.IO.Primitive.Finite.d14 v1)
name34 = "IO.Finite.putStrLn"
d34 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Builtin.String.T6 -> MAlonzo.Code.IO.Base.T16
d34 v0 v1
  = coe d12 (coe v0) (coe MAlonzo.Code.IO.Primitive.Finite.d16 v1)
