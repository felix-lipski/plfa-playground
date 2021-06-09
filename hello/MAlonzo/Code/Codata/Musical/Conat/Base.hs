{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Codata.Musical.Conat.Base where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Coinduction

name8 = "Codata.Musical.Conat.Base.Coℕ"
d8 = ()
data T8 = C10 | C14 (MAlonzo.RTE.Infinity AgdaAny T8)
name16 = "Codata.Musical.Conat.Base.∞ℕ"
d16 :: T8
d16 = coe C14 (coe d55)
name18 = "Codata.Musical.Conat.Base.pred"
d18 :: T8 -> T8
d18 v0
  = case coe v0 of
      C10 -> coe v0
      C14 v1 -> coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v1)
      _ -> MAlonzo.RTE.mazUnreachableError
name22 = "Codata.Musical.Conat.Base.fromℕ"
d22 :: Integer -> T8
d22 v0
  = case coe v0 of
      0 -> coe C10
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe C14 (coe d129 (coe v1))
name26 = "Codata.Musical.Conat.Base._+_"
d26 :: T8 -> T8 -> T8
d26 v0 v1
  = case coe v0 of
      C10 -> coe v1
      C14 v2 -> coe C14 (coe d249 (coe v2) (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
name55 = "Codata.Musical.Conat.Base._.♯-0"
d55 :: MAlonzo.RTE.Infinity AgdaAny T8
d55 = coe MAlonzo.Code.Agda.Builtin.Coinduction.C16 (coe d16)
name129 = "Codata.Musical.Conat.Base._.♯-1"
d129 :: Integer -> MAlonzo.RTE.Infinity AgdaAny T8
d129 v0
  = coe MAlonzo.Code.Agda.Builtin.Coinduction.C16 (coe d22 (coe v0))
name249 = "Codata.Musical.Conat.Base._.♯-2"
d249 ::
  MAlonzo.RTE.Infinity AgdaAny T8 ->
  T8 -> MAlonzo.RTE.Infinity AgdaAny T8
d249 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C16
      (coe
         d26 (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v0))
         (coe v1))
