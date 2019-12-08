module Util
    ( toOutput
    ) where

import System.Directory
import Data.List

toOutput :: Show a => a -> [Char] -> IO ()
toOutput answer name = do
    _cd <- getCurrentDirectory
    let od = if ("haskell-euler/src" `isSuffixOf` _cd) then "../output" else "output"
    createDirectoryIfMissing True od
    writeFile (od ++ "/Problem" ++ name ++ ".txt") $ show $ answer