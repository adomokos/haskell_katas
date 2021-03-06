module Ex56_MonadsMonadPlusSpec
  ( spec
  ) where

import Control.Monad
import Test.Hspec

main :: IO ()
main = hspec spec

{-
    MonadPlus type class is for monads that can also act as monoids:

    class Monad m => MonadPlus m where
        mzero :: m a
        mplus :: m a -> m a -> m a

    instance MonadPlus [] where
        mzero = []
        mplus = (++)

    guard :: (MonadPlus m) => Bool -> m ()
    guard True = return ()
    guard False = mzero
-}

-- Use do notation just like in the examples below
-- sevensOnly :: [Int]

spec :: Spec
spec =
  describe "guard" $ do
    it "can filter list of numbers with digits 7" $ do
      pending
      -- [x | x <- [1..50], ___ ]
          -- `shouldBe` [7,17,27,37,47]
    it "can put it in a minimal default context if true" $ do
      pending
      -- compare 5 and 2 in the examples below
      -- (guard (___) :: Maybe ()) `shouldBe` (Just ())
      -- (guard (___) :: Maybe ()) `shouldBe` Nothing
      -- (guard (___) :: [()]) `shouldBe` [()]
      -- (guard (___) :: [()]) `shouldBe` []
    it "can be used to filter out non-deterministic computations" $ do
      pending
      -- ([1..50] >>= (\x -> (___) >> return x))
          -- `shouldBe` [7,17,27,37,47]
    it "works in conjunction with >>" $ do
      pending
      -- compare 5 and 2 in the examples below
      -- (guard (___) >> return "cool" :: [String])
          -- `shouldBe` ["cool"]
      -- (guard (___) >> return "cool" :: [String])
          -- `shouldBe` []
    it "can be expressed with do notation" $ do
      pending
      -- sevensOnly `shouldBe` [7,17,27,37,47]
