module Problem0002Spec (
    tests
) where

import Test.Tasty
import Test.Tasty.HUnit

import Problem0002

tests :: TestTree
tests = testGroup "Tests" [unitTests]

unitTests :: TestTree
unitTests = testGroup "Problem0002 Unit tests"
    [
        testCase "displays the fibonacci sequence given less than n" $ do
            [] @=? (takeWhile (< 0) $ fibonacci)
            [0,1,1,2,3,5,8] @=? (takeWhile (< 13) $ fibonacci)

        , testCase "sums the even fibonacci values" $ do
            10 @=? (sumOfEvenFibLessThan 14)
    ]