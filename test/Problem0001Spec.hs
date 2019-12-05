module Problem0001Spec (
    tests
) where

import Test.Tasty
import Test.Tasty.HUnit

import Problem0001

tests :: TestTree
tests = testGroup "Tests" [unitTests]

unitTests :: TestTree
unitTests = testGroup "Problem0001 Unit tests"
    [
        testCase "finds the right multiples given an upperbound" $ do
            [3] @=? multiplesOfThreeOrFive 4
            [3,5,6,9,10,12,15] @=? multiplesOfThreeOrFive 15
            [] @=? multiplesOfThreeOrFive (-1)
    ]