implementation module Data.Char

import Text.Show
import Data.Eq
import Data.Ord
import Data.Enum
import Data.Num
import System.Misc

instance Show Char where
  show a = code inline {
    CtoAC
  }

instance Eq Char where
  (==) a b = code inline {
    eqC
  }

instance Ord Char where
  (<) a b = code inline {
    ltC
  }

instance Num Char where
  (+) a b = code inline {
    addI
    ItoC
  }

  (-) a b = code inline {
    subI
    ItoC
  }
  
  (*) a b = code inline {
    mulI
    ItoC
  }

  (/) a b = code inline {
    divI
    ItoC
  }

  ~ _ = abort "can't negate a character!"

  abs _ = abort "can't get the absolute value of a character!"
  
  sign _ = abort "can't get the sign of a character!"

  fromInt a = code inline {
    ItoC
  }

  toInt a = code inline {
    CtoI
  }

instance Enum Char where
  inc a = a + '\1'
  dec a = a - '\1'
