{-# OPTIONS_GHC -O2 -Odph -o wc #-}

import qualified Data.ByteString.Char8 as B

main :: IO ()
main = B.getContents >>= print . B.count '\n'
