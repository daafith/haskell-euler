module Problem0006Spec (
    tests
) where

import Test.Tasty
import Test.Tasty.HUnit

import Problem0006

tests :: TestTree
tests = testGroup "Tests" [unitTests]

unitTests :: TestTree
unitTests = testGroup "Problem0006 Unit tests"
    [
        testCase "displays the sum of the squares of 1..n" $ do
            385 @=? sumOfSquares 10
        , 
        testCase "displays the square of the sum of 1..n" $ do
            3025 @=? squareOfSum 10
    ]