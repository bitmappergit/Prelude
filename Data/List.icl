implementation module Data.List

import Data.Functor
import Data.Function
import Control.Applicative
import Control.Monad
import Text.Show
import Data.String

foldl :: (.a -> .(.b -> .a)) .a ![.b] -> .a
foldl f r [] = r
foldl f r [x : xs] = foldl f (f r x) xs

foldr :: (.a -> .(.b -> .b)) .b ![.a] -> .b
foldr f r [] = r
foldr f r [x : xs] = f x (foldr f r xs)

instance Semigroup [a] where
  (<>) [x : xs] list = [x : xs <> list]
  (<>) [] list = list

instance Functor [] where
  map f l = [f x \\ x <- l]

instance Applicative [] where
  (<*>) fs xs = [f x \\ f <- fs, x <- xs]
  pure x = [x]

instance Monad [] where
  (>>=) m k = foldr ((<>) o k) [] m

instance Show [a] | Show a where
  show [] = "[]"
  show v = "[" <> helper v
    where helper [a] = show a <> "]"
          helper [x : xs] = show x <> "," <> helper xs
