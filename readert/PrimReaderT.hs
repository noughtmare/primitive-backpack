module PrimReaderT where

import qualified PrimMonad as Super

import Control.Monad.Trans.Reader
import Control.Monad.Trans.Class
import GHC.Prim
    
class Monad m => PrimMonad m s | m -> s where
  primitive :: (State# s -> (# State# s, a #)) -> m a
instance (m ~ ReaderT r n, Super.PrimMonad n s) => PrimMonad m s where
  primitive = lift . Super.primitive
