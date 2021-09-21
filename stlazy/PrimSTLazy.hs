module PrimSTLazy where

import qualified GHC.ST (ST (ST))
import Control.Monad.ST.Lazy
import GHC.Prim
    
class Monad m => PrimMonad m s | m -> s where
  primitive :: (State# s -> (# State# s, a #)) -> m a
instance m ~ ST s => PrimMonad m s where
  primitive = strictToLazyST . GHC.ST.ST
