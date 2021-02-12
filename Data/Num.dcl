definition module Data.Num

class Num a where
  (+) :: !a !a -> a
  (-) :: !a !a -> a
  (*) :: !a !a -> a
  (/) :: !a !a -> a
  abs :: !a -> a
  sign :: !a -> a
  ~ :: !a -> a
  fromInt :: !Int -> a
  toInt :: !a -> Int
