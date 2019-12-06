module Lib
    ( runner
    ) where

import qualified Problem0001
import qualified Problem0002

runner :: IO ()
runner = do
        Problem0001.main
        Problem0002.main