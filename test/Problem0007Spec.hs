module Problem0007Spec (
    tests
) where

import Test.Tasty
import Test.Tasty.HUnit

import Problem0007

tests :: TestTree
tests = testGroup "Tests" [unitTests]

unitTests :: TestTree
unitTests = testGroup "Problem0007 Unit tests"
    [
        testCase "displays the prime on index n" $ do
            2 @=? primes!!0
            13 @=? primes!!5
    ]