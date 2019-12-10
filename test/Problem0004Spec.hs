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
        testCase "displays the max palindrome of 1..n * 1..n" $ do
            9 @=? (maximum $ (palindromes 1 10))
            121 @=? (maximum $ (palindromes 1 11))
    ]