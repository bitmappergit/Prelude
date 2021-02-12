implementation module Data.Array

import _SystemArray
import Text.Show
import Data.String
import Data.Int
import Data.Functor
import Control.Applicative

instance Functor {} where
  map f arr = { f v \\ v <-: arr }

instance Applicative {} where
  pure x = {x}
  (<*>) fs xs = { f x \\ f <-: fs, x <-: xs }

instance Show {a} | Show a where
  show v
    # (sz, v) = usize v
    = "{" <> helper sz 0 v
      with helper sz i arr
             # (val, arr) = arr![i]
             | i == dec sz = show val <> "}"
             = show val <> "," <> helper sz (inc i) arr
