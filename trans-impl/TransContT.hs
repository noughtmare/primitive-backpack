module TransContT where

import Control.Monad.Trans.Cont
import Control.Monad.Trans.Class

class MonadTrans t => Trans t

instance t ~ ContT r => Trans t
