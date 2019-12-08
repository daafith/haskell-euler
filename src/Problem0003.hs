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

-- solved it in simple, ugly Java , now it's time for haskell
--  public static void main(String[] args) {
--   long n = 600851475143L;
--     ArrayList<Integer> pfs = new ArrayList<>();

--     for (int p = 2; p<=n; p++) {
--       if (n % p == 0) {
--         pfs.add(p);
--         n = n / p;
--       }
--     }
--     pfs.forEach(pf -> System.out.println(pf));
--     System.out.println("The highest prime factor is " + Collections.max(pfs)); // 6857
--   }




