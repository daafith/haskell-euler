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
        testCase "displays the palindromes in p..q * p..q" $ do
            [9,8,7,6,5,4,3,2,1] @=? palindromes 1 10
            [121,99,88,77,66,55,44,33,22,8,9,6,4] @=? palindromes 2 11
    ]