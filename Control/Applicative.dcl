definition module Control.Applicative

import Data.Functor

class Applicative f | Functor f where
  pure :: a -> f a
  (<*>) infixl 4 :: !(f (a -> b)) (f a) -> f b

liftA :: (a -> b) (f a) -> f b | Applicative f
liftA2 :: (a b -> c) !(f a) (f b) -> f c | Applicative f
liftA3 :: (a b c -> d) !(f a) (f b) (f c) -> f d | Applicative f
