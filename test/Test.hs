module Test (sieve) where

import Control.Monad.Primitive
import Data.Primitive.Array
import Control.Monad (when)

sieve :: PrimMonad m s => Int -> m (MutableArray s Bool)
sieve n = do
  a <- newArray n True
  let
    go i = when (i < n) $ do
      x <- readArray a i
      let go' j = when (j < n) (writeArray a j False *> go' (j + i))
      when x (go' (2 * i))
      go (i + 1)
  go 2
  pure a
