module TransRWSTStrict where

import Control.Monad.Trans.RWS.Strict
import Control.Monad.Trans.Class

class MonadTrans t => Trans t

instance (Monoid w, t ~ RWST r w s) => Trans t
