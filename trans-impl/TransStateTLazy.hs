module TransStateTLazy where

import Control.Monad.Trans.State.Lazy
import Control.Monad.Trans.Class

class MonadTrans t => Trans t

instance t ~ StateT s => Trans t
