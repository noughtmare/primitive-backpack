module TransRWSTCPS where

import Control.Monad.Trans.RWS.CPS
import Control.Monad.Trans.Class

class MonadTrans t => Trans t

instance (Monoid w, t ~ RWST r w s) => Trans t
