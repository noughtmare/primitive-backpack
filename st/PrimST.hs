module PrimST where

import GHC.ST
import GHC.Prim
    
class Monad m => PrimMonad m s | m -> s where
  primitive :: (State# s -> (# State# s, a #)) -> m a
instance m ~ ST s => PrimMonad m s where
  primitive = ST
