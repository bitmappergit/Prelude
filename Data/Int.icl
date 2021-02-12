implementation module Data.Int

import Data.Num
import Data.Eq
import Data.Ord
import Data.Enum
import Text.Show

instance Show Int where
  show a = code inline {
    .d 0 1 i
      jsr ItoAC
    .o 1 0
  }

instance Eq Int where
  (==) :: !Int !Int -> Bool
  (==) a b = code inline {
    eqI
  }

instance Ord Int where
  (<) a b = code inline {
    ltI
  }
 
instance Num Int where
  (+) a b = code inline {
    addI
  }

  (-) a b = code inline {
    subI
  }

  (*) a b = code inline {
    mulI
  }

  (/) a b = code inline {
    divI
  }

  ~ x = code inline {
    negI
  }
  
  abs x
    | x < 0 = ~x
    = x
  
  sign x
    | x == 0 = 0
    | x < 0 = -1
    = 1

  fromInt x = code inline {
    no_op
  }

  toInt x = code inline {
    no_op
  }

instance Enum Int where
  inc a = a + 1
  dec a = a - 1
