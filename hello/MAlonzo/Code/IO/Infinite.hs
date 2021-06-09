{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.IO.Infinite where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Char
import qualified MAlonzo.Code.Agda.Builtin.IO
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Codata.Musical.Colist.Base
import qualified MAlonzo.Code.IO.Base
import qualified MAlonzo.Code.IO.Primitive
import qualified MAlonzo.Code.IO.Primitive.Infinite
import qualified MAlonzo.Code.Level

name6 = "IO.Infinite.getContents"
d6 :: MAlonzo.Code.IO.Base.T16
d6
  = coe
      MAlonzo.Code.IO.Base.C22
      (coe MAlonzo.Code.IO.Primitive.Infinite.d6)
name8 = "IO.Infinite.lift′"
d8 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Builtin.IO.T8
    AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.IO.Base.T16
d8 v0 v1
  = coe
      MAlonzo.Code.IO.Base.C22
      (coe
         MAlonzo.Code.IO.Primitive.d18 () v0 erased erased v1
         (\ v2 ->
            coe
              MAlonzo.Code.IO.Primitive.d8 v0 erased
              (coe
                 MAlonzo.Code.Level.C20 (coe MAlonzo.Code.Agda.Builtin.Unit.C8))))
name14 = "IO.Infinite.writeFile"
d14 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Codata.Musical.Colist.Base.T20
    AgdaAny MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.Code.IO.Base.T16
d14 v0 v1 v2
  = coe
      d8 (coe v0) (coe MAlonzo.Code.IO.Primitive.Infinite.d10 v1 v2)
name20 = "IO.Infinite.appendFile"
d20 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Codata.Musical.Colist.Base.T20
    AgdaAny MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.Code.IO.Base.T16
d20 v0 v1 v2
  = coe
      d8 (coe v0) (coe MAlonzo.Code.IO.Primitive.Infinite.d12 v1 v2)
name26 = "IO.Infinite.putStr"
d26 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Codata.Musical.Colist.Base.T20
    AgdaAny MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.Code.IO.Base.T16
d26 v0 v1
  = coe d8 (coe v0) (coe MAlonzo.Code.IO.Primitive.Infinite.d14 v1)
name30 = "IO.Infinite.putStrLn"
d30 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Codata.Musical.Colist.Base.T20
    AgdaAny MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.Code.IO.Base.T16
d30 v0 v1
  = coe d8 (coe v0) (coe MAlonzo.Code.IO.Primitive.Infinite.d16 v1)
