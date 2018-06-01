module KleeneBoolean where

import Prelude

import qualified KleeneLogic as K

toBool :: K.Kleene -> Maybe Bool
toBool K.True = Just True
toBool K.False = Just False
toBool K.Unknown = Nothing

fromBool :: Bool -> K.Kleene
fromBool True = K.True
fromBool False = K.False




