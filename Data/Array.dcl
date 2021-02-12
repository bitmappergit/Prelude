definition module Data.Array

import _SystemArray
import Text.Show
import Data.Functor
import Control.Applicative

instance Functor {}
instance Applicative {}
instance Show {a} | Show a
