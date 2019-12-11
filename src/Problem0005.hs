module Problem0005
    ( main
    ) where

import Util

main :: IO ()
main = do
    putStrLn description
    putStrLn "The answer is:"
    let answer = "?"
    print answer

description = "\nProblem 5:\n2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.\
\What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?\n"

