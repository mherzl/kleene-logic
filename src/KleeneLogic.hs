module KleeneLogic where

import Prelude (Eq, Ord)

data Kleene = False
            | Unknown
            | True
            deriving (Eq, Ord)

not :: Kleene -> Kleene
not False = True
not True = False
not Unknown = Unknown

and :: Kleene -> Kleene -> Kleene
and False _ = False
and _ False = False
and True True = True
and _ _ = Unknown

or :: Kleene -> Kleene -> Kleene
or True _ = True
or _ True = True
or False False = False
or _ _ = True


