module Problem0001
    ( main
    ) where

-- If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
-- Find the sum of all the multiples of 3 or 5 below 1000.

main :: IO ()
main = do
        putStrLn description
        putStrLn "The answer is:"
        print (sum (multiplesOfThreeOrFive 999))

description = "If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9.\
\ The sum of these multiples is 23. Find the sum of all the multiples of 3 or 5 below 1000.\n"

multiplesOfThreeOrFive :: Integral a => a -> [a]
multiplesOfThreeOrFive upperbound = [x | x <- [1..upperbound], x `isMultipleOf` [3,5]]
                                    where x `isMultipleOf` ys = any (\y -> x `mod` y == 0) ys
