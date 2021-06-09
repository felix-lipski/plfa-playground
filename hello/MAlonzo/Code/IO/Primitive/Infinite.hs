{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.IO.Primitive.Infinite where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Char
import qualified MAlonzo.Code.Agda.Builtin.IO
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Codata.Musical.Colist.Base

import qualified Data.Text
fromColist :: MAlonzo.Code.Codata.Musical.Colist.Base.AgdaColist a -> [a]
fromColist MAlonzo.Code.Codata.Musical.Colist.Base.Nil         = []
fromColist (MAlonzo.Code.Codata.Musical.Colist.Base.Cons x xs) =
  x : fromColist (MAlonzo.RTE.flat xs)

toColist :: [a] -> MAlonzo.Code.Codata.Musical.Colist.Base.AgdaColist a
toColist []       = MAlonzo.Code.Codata.Musical.Colist.Base.Nil
toColist (x : xs) =
  MAlonzo.Code.Codata.Musical.Colist.Base.Cons x (MAlonzo.RTE.Sharp (toColist xs))
name6 = "IO.Primitive.Infinite.getContents"
d6 ::
  MAlonzo.Code.Agda.Builtin.IO.T8
    ()
    (MAlonzo.Code.Codata.Musical.Colist.Base.T20
       () MAlonzo.Code.Agda.Builtin.Char.T6)
d6 = fmap toColist getContents
name8 = "IO.Primitive.Infinite.readFile"
d8 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.IO.T8
    ()
    (MAlonzo.Code.Codata.Musical.Colist.Base.T20
       () MAlonzo.Code.Agda.Builtin.Char.T6)
d8 = fmap toColist . readFile . Data.Text.unpack
name10 = "IO.Primitive.Infinite.writeFile"
d10 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Codata.Musical.Colist.Base.T20
    () MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.Code.Agda.Builtin.IO.T8
    () MAlonzo.Code.Agda.Builtin.Unit.T6
d10 = \x -> writeFile (Data.Text.unpack x) . fromColist
name12 = "IO.Primitive.Infinite.appendFile"
d12 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Codata.Musical.Colist.Base.T20
    () MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.Code.Agda.Builtin.IO.T8
    () MAlonzo.Code.Agda.Builtin.Unit.T6
d12 = \x -> appendFile (Data.Text.unpack x) . fromColist
name14 = "IO.Primitive.Infinite.putStr"
d14 ::
  MAlonzo.Code.Codata.Musical.Colist.Base.T20
    () MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.Code.Agda.Builtin.IO.T8
    () MAlonzo.Code.Agda.Builtin.Unit.T6
d14 = putStr . fromColist
name16 = "IO.Primitive.Infinite.putStrLn"
d16 ::
  MAlonzo.Code.Codata.Musical.Colist.Base.T20
    () MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.Code.Agda.Builtin.IO.T8
    () MAlonzo.Code.Agda.Builtin.Unit.T6
d16 = putStrLn . fromColist
