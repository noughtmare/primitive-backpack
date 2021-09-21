module TransWriterTCPS where

import Control.Monad.Trans.Writer.CPS
import Control.Monad.Trans.Class

class MonadTrans t => Trans t

instance (Monoid w, t ~ WriterT w) => Trans t
