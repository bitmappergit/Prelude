implementation module Data.String

import Data.Semigroup
import Text.Show

instance Semigroup String where
  (<>) a b = code inline {
    .d 2 0
      jsr catAC
    .o 1 0
  }

instance Show String where
  show a = "\"" <> a <> "\""
