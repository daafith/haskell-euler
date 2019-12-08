module Lib
    ( runner
    ) where

import qualified Problem0001
import qualified Problem0002
import qualified Problem0003

runner :: IO ()
runner = do
        separator
        Problem0001.main
        separator
        Problem0002.main
        separator
        Problem0003.main
        separator

separator = putStrLn "\n|------------------|"