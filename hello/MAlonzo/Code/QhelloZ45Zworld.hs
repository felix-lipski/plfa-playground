{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.QhelloZ45Zworld where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.IO
import qualified MAlonzo.Code.IO.Base
import qualified MAlonzo.Code.IO.Finite
import qualified MAlonzo.Code.Level

main = coe d2
name2 = "hello-world.main"
d2 :: MAlonzo.Code.Agda.Builtin.IO.T8 AgdaAny MAlonzo.Code.Level.T8
d2
  = coe
      MAlonzo.Code.IO.Base.du88 (coe MAlonzo.Code.Level.d22)
      (coe
         MAlonzo.Code.IO.Finite.d34 (coe MAlonzo.Code.Level.d22)
         (coe (Data.Text.pack "Hello Agda")))
