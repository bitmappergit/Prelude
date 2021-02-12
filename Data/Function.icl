implementation module Data.Function

($) infixr 9
($) f :== f

(o) infixr 9
(o) f g :== \x -> f (g x)
