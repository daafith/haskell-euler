module Problem0007
    ( main
    , primes
    ) where

import Util

main :: IO ()
main = do
    putStrLn description
    putStrLn "The answer is:"
    let answer = primes!!10000
    print answer
    answer `toOutput` "0007"

description = "\nProblem 7:\nBy listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.\n\
\What is the 10 001st prime number?\n"

primes :: [Integer]
primes = 2 : [x | x <- [3..], all (\y -> x `mod` y /= 0) 
                   (takeWhile (<= (floor . sqrt $ fromIntegral x)) primes)]
