module Lib
    ( runner
    ) where

import qualified Problem0001
import qualified Problem0002
import qualified Problem0003
import qualified Problem0004
import qualified Problem0005
import qualified Problem0006

runner :: IO ()
runner = do
        separator
        Problem0001.main
        separator
        Problem0002.main
        separator
        Problem0003.main
        separator
        Problem0004.main
        separator
        Problem0005.main
        separator
        Problem0006.main

separator = putStrLn "\n|------------------|"