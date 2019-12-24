module Problem0009
    ( main
    , pythagoreanTriplet
    ) where

import Util

main :: IO ()
main = do
    putStrLn description
    putStrLn "The answer is:"
    let answer = (\(x,y,z) -> x*y*z) $ head $ pythagoreanTriplet 1000
    print answer
    answer `toOutput` "0009"

description = "\nProblem 9:\nA Pythagorean triplet is a set of three natural numbers, a < b < c, for which,\n\
\a^2 + b^2 = c^2\n\
\For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.\n\
\There exists exactly one Pythagorean triplet for which a + b + c = 1000. Find the product abc.\n"

pythagoreanTriplet :: (Num c, Eq c, Enum c) => c -> [(c, c, c)]
pythagoreanTriplet s = take 1 [ (a,b,c) | c <- [1..s-1], b <- [1..c-1], a <- [1..b-1], a^2 + b^2 == c^2, a + b + c == s]
