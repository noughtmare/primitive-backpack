module TransRWSTLazy where

import Control.Monad.Trans.RWS.Lazy
import Control.Monad.Trans.Class

class MonadTrans t => Trans t

instance (Monoid w, t ~ RWST r w s) => Trans t
