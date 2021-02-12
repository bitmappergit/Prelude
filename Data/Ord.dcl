definition module Data.Ord

import Data.Eq
import Data.Bool

class Ord a | Eq a where
  (<) :: !a !a -> Bool

  (>) :: !a !a -> Bool
  (>) a b :== b < a

  (<=) :: !a !a -> Bool
  (<=) a b :== not (b < a)

  (>=) :: !a !a -> Bool
  (>=) a b :== not (a < b)

  min :: !a !a -> a
  min a b :== if (a < b) a b

  max :: !a !a -> a
  max a b :== if (b < a) a b
