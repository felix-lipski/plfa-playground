{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.IO.Primitive.Finite where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.IO
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Builtin.Unit

import qualified Control.Exception
import qualified System.IO
import qualified Data.Text.IO as TIO
import qualified Data.Text    as T
-- Reads a finite file. Raises an exception if the file path refers
-- to a non-physical file (like "/dev/zero").
readFiniteFile :: T.Text -> IO T.Text
readFiniteFile f = do
  h <- System.IO.openFile (T.unpack f) System.IO.ReadMode
  Control.Exception.bracketOnError (return ()) (\_ -> System.IO.hClose h)
                                               (\_ -> System.IO.hFileSize h)
  TIO.hGetContents h
name6 = "IO.Primitive.Finite.getLine"
d6 ::
  MAlonzo.Code.Agda.Builtin.IO.T8
    () MAlonzo.Code.Agda.Builtin.String.T6
d6 = TIO.getLine
name8 = "IO.Primitive.Finite.readFile"
d8 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.IO.T8
    () MAlonzo.Code.Agda.Builtin.String.T6
d8 = readFiniteFile
name10 = "IO.Primitive.Finite.writeFile"
d10 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.IO.T8
    () MAlonzo.Code.Agda.Builtin.Unit.T6
d10 = TIO.writeFile . T.unpack
name12 = "IO.Primitive.Finite.appendFile"
d12 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.IO.T8
    () MAlonzo.Code.Agda.Builtin.Unit.T6
d12 = TIO.appendFile . T.unpack
name14 = "IO.Primitive.Finite.putStr"
d14 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.IO.T8
    () MAlonzo.Code.Agda.Builtin.Unit.T6
d14 = TIO.putStr
name16 = "IO.Primitive.Finite.putStrLn"
d16 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.IO.T8
    () MAlonzo.Code.Agda.Builtin.Unit.T6
d16 = TIO.putStrLn
