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
    let answer = maximum $ palindromes 100 999
    print answer

description = "\nA palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.\
\Find the largest palindrome made from the product of two 3-digit numbers.\n"

palindromes l u = [ x*y::Int | x <- [u, u-1..l] , y <- [x, x-1..l], isPalindrome (x*y) ]
    where isPalindrome p =  (read . reverse . show $ p) == p


-- is a quicker version that I found somewhere else but need to research Control.Applicative
-- http://hackage.haskell.org/package/base-4.12.0.0/docs/Control-Applicative.html
maxPalindrome = print $ maximum
    [ x * y :: Int
    | x <- [999, 998 .. 100]
    , y <- [x, x-1 .. 100]
    , (==) <*> reverse $ show $ x * y
    ]

