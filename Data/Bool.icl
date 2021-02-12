implementation module Data.Bool

not :: !Bool -> Bool
not True = False
not False = True

(&&) :: !Bool !Bool -> Bool
(&&) True True = True
(&&) _ _ = False 

(||) :: !Bool !Bool -> Bool
(||) True _ = True
(||) False x = x 
