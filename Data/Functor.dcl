definition module Data.Functor

class Functor f where
  map :: (u:a -> v:b) !(f u:a) -> f v:b

  (<$>) infixl 4 :: (u:a -> v:b) !(f u:a) -> f v:b
  (<$>) f fa :== map f fa
