module PrimIO where

import GHC.IO
import GHC.Prim
    
class Monad m => PrimMonad m s | m -> s where
  primitive :: (State# s -> (# State# s, a #)) -> m a
instance (m ~ IO, s ~ RealWorld) => PrimMonad m s where
  primitive = IO
