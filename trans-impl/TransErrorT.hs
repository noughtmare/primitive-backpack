module TransErrorT where

import Control.Monad.Trans.Error
import Control.Monad.Trans.Class

class MonadTrans t => Trans t

instance (Error e, t ~ ErrorT e) => Trans t
