module Problem0004
    ( main
    ) where

import Util

main :: IO ()
main = do
    putStrLn description
    putStrLn "The answer is:"
    let answer = "?"
    print answer

description = "\nA palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.\
\Find the largest palindrome made from the product of two 3-digit numbers.\n"


