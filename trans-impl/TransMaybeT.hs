module TransMaybeT where

import Control.Monad.Trans.Maybe
import Control.Monad.Trans.Class

class MonadTrans t => Trans t

instance t ~ MaybeT => Trans t
