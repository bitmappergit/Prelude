definition module Data.Semigroup

class Semigroup a where
  (<>) :: !a !a -> a
