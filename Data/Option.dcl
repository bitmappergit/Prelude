definition module Data.Option

import Data.Functor
import Control.Applicative
import Control.Monad
import Text.Show

:: Option a
  = Some a
  | None

instance Functor Option
instance Applicative Option
instance Monad Option
instance Show (Option a) | Show a
