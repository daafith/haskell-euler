module Problem0009Spec (
    tests
) where

import Test.Tasty
import Test.Tasty.HUnit

import Problem0009

tests :: TestTree
tests = testGroup "Tests" [unitTests]

unitTests :: TestTree
unitTests = testGroup "Problem0009 Unit tests"
    [
        testCase "finds the Pythagorean triplet" $ do
            [(3,4,5)] @=? pythagoreanTriplet 12
            [] @=? pythagoreanTriplet 11
    ]