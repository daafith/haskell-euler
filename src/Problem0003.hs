module Problem0003
    ( main
    ) where

import Util

main :: IO ()
main = do
    putStrLn description
    putStrLn "The answer is:"
    let answer = "?"
    print answer
    answer `toOutput` "0003"

description = "\nProblem 3:\nThe prime factors of 13195 are 5, 7, 13 and 29.\
\What is the largest prime factor of the number 600851475143 ?\n"




