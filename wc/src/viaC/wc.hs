import Foreign
import System.Environment
import qualified Data.ByteString as B

main = do
    f <- head `fmap` getArgs
    B.readFile f >>= \(B.PS x _ l) -> withForeignPtr x $ \p -> print (c_wc p l)

foreign import ccall unsafe "wc.h wc" c_wc :: Ptr Word8 -> Int -> Int
