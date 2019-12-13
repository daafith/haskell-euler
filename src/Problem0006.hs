module Problem0006
    ( main
    , sumOfSquares
    , squareOfSum
    ) where

import Util

main :: IO ()
main = do
    putStrLn description
    putStrLn "The answer is:"
    let answer = squareOfSum 100 - (sumOfSquares 100)
    print answer
    answer `toOutput` "0006"

description = "\nProblem 6:\nThe sum of the squares of the first ten natural numbers is\n\
\1^2 + 2^2 + ... + 10^2 = 385\n\
\The square of the sum of the first ten natural numbers is\n\
\(1 + 2 + ... + 10)^2 = 55^2 = 3025\n\
\Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.\n\
\Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.\n"

sumOfSquares :: (Num a, Enum a) => a -> a
sumOfSquares u = sum [x^2 | x <- [1..u]] 

squareOfSum :: (Num a, Enum a) => a -> a
squareOfSum u = sum [x | x <- [1..u]]^2

