definition module Control.Monad

import Control.Applicative

class Monad m | Applicative m where
  (>>=) infixl 1 :: !(m a) (a -> m b) -> m b

  return :: m -> m a | Monad m
  return x :== pure x

  (>>) infixl 1 :: (m a) (m b) -> m b | Monad m
  (>>) a b :== a >>= \_ -> b

  (=<<) infixr 2 :: (a -> m b) (m a) -> m b | Monad m
  (=<<) f x :== x >>= f
