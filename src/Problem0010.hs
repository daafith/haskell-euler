module Problem0010
    ( main
    , sumPrimesBelow
    ) where

import Util

main :: IO ()
main = do
    putStrLn description
    putStrLn "The answer is:"
    let answer = sumPrimesBelow 2000000
    print answer
    answer `toOutput` "0010"

description = "\nProblem 10:\nThe sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.\n\
\Find the sum of all the primes below two million.\n"

sumPrimesBelow :: Integer -> Integer
sumPrimesBelow p = sum $ takeWhile (<p) primes

primes :: [Integer]
primes = 2 : [x | x <- [3..], all (\y -> x `mod` y /= 0) 
                   (takeWhile (<= (floor . sqrt $ fromIntegral x)) primes)]

