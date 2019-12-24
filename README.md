# Haskell Euler
My scribbles in haskell for [Project Euler](https://projecteuler.net)

## Setup & Build
Assuming you have installed the [Haskell Tool Stack](https://www.haskellstack.org), run:
```
stack setup
stack build
```

## Run All
```
stack exec haskell-euler
```
Or use ghci to browse the specific modules and / or execute functions, e.g.
```
stack ghci
% :browse Problem0005
Problem0005.main :: IO ()
leastCommonMultiple :: Integral a => a -> a
% Problem0005.leastCommonMultiple 25
26771144400
% Problem0003.primeFactors 267759
[3,3,3,47,211]
```

## Run Tests
```
stack test
```

## TODO
Optimize performance of
- Problem 4
- Problem 7
- Problem 9
- Problem 10