module TransExceptT where

import Control.Monad.Trans.Except
import Control.Monad.Trans.Class

class MonadTrans t => Trans t

instance t ~ ExceptT e => Trans t
