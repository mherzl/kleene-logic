
import Test.Hspec (hspec, describe, it)
import Test.QuickCheck.Property (property)

import KleeneBoolean (toBool, fromBool)

main :: IO ()
main = hspec $ do
  describe "fromBool" $ do
    it "is same converted back" $ property $
      \x -> toBool (fromBool x) == Just x
