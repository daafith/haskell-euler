module Problem0004Spec (
    tests
) where

import Test.Tasty
import Test.Tasty.HUnit

import Problem0004

tests :: TestTree
tests = testGroup "Tests" [unitTests]

unitTests :: TestTree
unitTests = testGroup "Problem0004 Unit tests"
    [
        testCase "displays the palindromes of 1..n * 1..n" $ do
            [1,2,3,4,5,6,7,8,9] @=? (palindromes 10)
            [1,2,3,4,5,6,7,8,9,11,22,33,44,55,66,77,88,99,121] @=? (palindromes 11)
    ]