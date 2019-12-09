module Problem0003Spec (
    tests
) where

import Test.Tasty
import Test.Tasty.HUnit

import Problem0003

tests :: TestTree
tests = testGroup "Tests" [unitTests]

unitTests :: TestTree
unitTests = testGroup "Problem0002 Unit tests"
    [
        testCase "displays the prime factors of n" $ do
            [] @=? (primeFactors 1)
            [2,5] @=? (primeFactors 10)
            [5,7,13,29] @=? (primeFactors 13195)
    ]