implementation module Control.Applicative

import Data.Functor

lift :: a -> f a | Applicative f
lift a = pure a

liftA :: (a -> b) (f a) -> f b | Applicative f
liftA f a = lift f <*> a

liftA2 :: (a b -> c) !(f a) (f b) -> f c | Applicative f
liftA2 f a b = f <$> a <*> b

liftA3 :: (a b c -> d) !(f a) (f b) (f c) -> f d | Applicative f
liftA3 f a b c = f <$> a <*> b <*> c

