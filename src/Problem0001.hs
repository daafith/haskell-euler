module Problem0001
    ( main
    , multiplesOfThreeOrFive
    ) where

import Util

main :: IO ()
main = do
    putStrLn description
    putStrLn "The answer is:"
    let answer = sum $ multiplesOfThreeOrFive 999
    print answer
    answer `toOutput` "0001"

description = "\nProblem 1:\nIf we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9.\
\ The sum of these multiples is 23. Find the sum of all the multiples of 3 or 5 below 1000.\n"

multiplesOfThreeOrFive :: Integral a => a -> [a]
multiplesOfThreeOrFive upperbound = [x | x <- [1..upperbound], x `isMultipleOf` [3,5]]
                                    where x `isMultipleOf` ys = any (\y -> x `mod` y == 0) ys
