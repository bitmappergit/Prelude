definition module Data.Eq

import Data.Bool

class Eq a where
  (==) :: !a !a -> Bool
  (/=) :: !a !a -> Bool | Eq a
  (/=) a b :== not (a == b)
