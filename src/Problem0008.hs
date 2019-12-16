module Problem0008
    ( main
    , findLargestProduct
    ) where

import Util

main :: IO ()
main = do
    putStrLn description
    putStrLn "The answer is:"
    let answer = "?"
    print answer

description = "\nProblem 8:\nThe four adjacent digits in the 1000-digit number that have the greatest product are 9 × 9 × 8 × 9 = 5832.\n\n\

\73167176531330624919225119674426574742355349194934\n\
\96983520312774506326239578318016984801869478851843\n\
\85861560789112949495459501737958331952853208805511\n\
\12540698747158523863050715693290963295227443043557\n\
\66896648950445244523161731856403098711121722383113\n\
\62229893423380308135336276614282806444486645238749\n\
\30358907296290491560440772390713810515859307960866\n\
\70172427121883998797908792274921901699720888093776\n\
\65727333001053367881220235421809751254540594752243\n\
\52584907711670556013604839586446706324415722155397\n\
\53697817977846174064955149290862569321978468622482\n\
\83972241375657056057490261407972968652414535100474\n\
\82166370484403199890008895243450658541227588666881\n\
\16427171479924442928230863465674813919123162824586\n\
\17866458359124566529476545682848912883142607690042\n\
\24219022671055626321111109370544217506941658960408\n\
\07198403850962455444362981230987879927244284909188\n\
\84580156166097919133875499200524063689912560717606\n\
\05886116467109405077541002256983155200055935729725\n\
\71636269561882670428252483600823257530420752963450\n\n\

\Find the thirteen adjacent digits in the 1000-digit number that have the greatest product. What is the value of this product?\n"

findLargestProduct = longDigit

longDigit = 7316717653133062491922511967442657474235534919493496983520312774506326239578318016984801869478851843858615607891129494954595017379583319528532088055111254069874715852386305071569329096329522744304355766896648950445244523161731856403098711121722383113622298934233803081353362766142828064444866452387493035890729629049156044077239071381051585930796086670172427121883998797908792274921901699720888093776657273330010533678812202354218097512545405947522435258490771167055601360483958644670632441572215539753697817977846174064955149290862569321978468622482839722413756570560574902614079729686524145351004748216637048440319989000889524345065854122758866688116427171479924442928230863465674813919123162824586178664583591245665294765456828489128831426076900422421902267105562632111110937054421750694165896040807198403850962455444362981230987879927244284909188845801561660979191338754992005240636899125607176060588611646710940507754100225698315520005593572972571636269561882670428252483600823257530420752963450