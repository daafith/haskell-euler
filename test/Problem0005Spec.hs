module Problem0005Spec (
    tests
) where

import Test.Tasty
import Test.Tasty.HUnit

import Problem0005

tests :: TestTree
tests = testGroup "Tests" [unitTests]

unitTests :: TestTree
unitTests = testGroup "Problem0005 Unit tests"
    [
        testCase "displays the least common mutiple of 1..n" $ do
            60 @=? leastCommonMultiple 5
            2520 @=? leastCommonMultiple 10
    ]