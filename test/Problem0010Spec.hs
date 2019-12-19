module Problem0010Spec (
    tests
) where

import Test.Tasty
import Test.Tasty.HUnit

import Problem0010

tests :: TestTree
tests = testGroup "Tests" [unitTests]

unitTests :: TestTree
unitTests = testGroup "Problem0010 Unit tests"
    [
        testCase "sums the prime numbers below n" $ do
            17 @=? sumPrimesBelow 10
    ]