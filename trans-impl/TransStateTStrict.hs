module TransStateTStrict where

import Control.Monad.Trans.State.Strict
import Control.Monad.Trans.Class

class MonadTrans t => Trans t

instance t ~ StateT s => Trans t
