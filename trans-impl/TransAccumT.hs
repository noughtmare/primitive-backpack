module TransAccumT where

import Control.Monad.Trans.Accum
import Control.Monad.Trans.Class

class MonadTrans t => Trans t

instance (Monoid w, t ~ AccumT w) => Trans t
