module TransSelectT where

import Control.Monad.Trans.Select
import Control.Monad.Trans.Class

class MonadTrans t => Trans t

instance t ~ SelectT r => Trans t
