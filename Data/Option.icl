implementation module Data.Option

import Text.Show
import Data.Functor
import Data.String
import Control.Applicative
import Control.Monad

instance Functor Option where
  map f (Some x) = Some (f x)
  map _ None = None

instance Applicative Option where
  pure x = Some x
  (<*>) (Some f) (Some x) = Some (f x)
  (<*>) _ _ = None

instance Monad Option where
  (>>=) (Some x) f = f x
  (>>=) None _ = None

instance Show (Option a) | Show a where
  show (Some x) = "Some " <> show x
  show None = "None"
