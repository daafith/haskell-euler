module Problem0005
    ( main
    , leastCommonMultiple
    ) where

import Util

main :: IO ()
main = do
    putStrLn description
    putStrLn "The answer is:"
    let answer = leastCommonMultiple 20
    print answer
    answer `toOutput` "0005"

description = "\nProblem 5:\n2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.\n\
\What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?\n"

leastCommonMultiple n = foldr1 lcm [2..n]