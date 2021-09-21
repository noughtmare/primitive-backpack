module PrimTrans where

import qualified PrimMonad as Super

import Trans
import Control.Monad.Trans.Reader
import Control.Monad.Trans.Class
import GHC.Prim
    
class Monad m => PrimMonad m s | m -> s where
  primitive :: (State# s -> (# State# s, a #)) -> m a
instance (Monad (t n), Trans t, m ~ t n, Super.PrimMonad n s) => PrimMonad m s where
  primitive = lift . Super.primitive
