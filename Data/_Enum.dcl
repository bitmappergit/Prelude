definition module Data._Enum

import Data.Ord
import Data.Num

class Enum a where
  inc :: !a -> a
  dec :: !a -> a

_from :: a -> .[a] | Enum, Ord a
  special a=Int; a=Char

_from_to :: !a !a -> .[a] | Enum, Ord a
  special a=Int; a=Char

_from_then :: a a -> .[a] | Enum, Ord, Num a
  special a=Int; a=Char

_from_then_to :: !a !a !a -> .[a] | Enum, Ord, Num a
  special a=Int; a=Char
