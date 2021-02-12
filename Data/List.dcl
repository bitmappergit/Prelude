definition module Data.List

import Data.Functor
import Control.Applicative
import Control.Monad
import Text.Show

foldl :: (.a -> .(.b -> .a)) .a ![.b] -> .a
foldr :: (.a -> .(.b -> .b)) .b ![.a] -> .b

instance Functor []
instance Applicative []
instance Monad []

instance Show [a] | Show a
