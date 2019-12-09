module Problem0003
    ( main
    , primeFactors
    ) where

import Util

main :: IO ()
main = do
    putStrLn description
    putStrLn "The answer is:"
    let answer = maximum $ primeFactors 600851475143
    print answer
    answer `toOutput` "0003"

description = "\nProblem 3:\nThe prime factors of 13195 are 5, 7, 13 and 29.\
\What is the largest prime factor of the number 600851475143 ?\n"

primeFactors :: Integral t => t -> [t]
primeFactors 1 = []
primeFactors n
  | factors == []  = [n]
  | otherwise = factors ++ primeFactors (n `div` (head factors))
  where factors = take 1 $ filter (\x -> (n `mod` x) == 0) [2..n-1]


