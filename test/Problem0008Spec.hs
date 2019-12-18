module Problem0008Spec (
    tests
) where

import Test.Tasty
import Test.Tasty.HUnit

import Problem0008

tests :: TestTree
tests = testGroup "Tests" [unitTests]

unitTests :: TestTree
unitTests = testGroup "Problem0008 Unit tests"
    [
        testCase "finds the products by range" $ do
            [360] @=? productsByRange 4 [3,4,5,6]
            [] @=? productsByRange 5 [3,4,5,6]
        ,
        testCase "displays the max product in the 1000 digit of n digits" $ do
            5832 @=? findLargestProduct 4
    ]