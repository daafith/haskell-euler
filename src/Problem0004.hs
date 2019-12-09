module Problem0004
    ( main
    , palindromes
    ) where

import Util
import Data.List.Unique

main :: IO ()
main = do
    putStrLn description
    putStrLn "The answer is:"
    let answer = last $ palindromes 999
    print answer

description = "\nA palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.\
\Find the largest palindrome made from the product of two 3-digit numbers.\n"

palindromes n = sortUniq [ x*y | x <- [1..n] , y <- [1..n], isPalindrome (x*y)]
    where isPalindrome p =  (read . reverse . show $ p) == p


