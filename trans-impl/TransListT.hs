module TransListT where

import Control.Monad.Trans.List
import Control.Monad.Trans.Class

class MonadTrans t => Trans t

instance t ~ ListT => Trans t
