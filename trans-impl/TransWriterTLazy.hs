module TransWriterTLazy where

import Control.Monad.Trans.Writer.Lazy
import Control.Monad.Trans.Class

class MonadTrans t => Trans t

instance (Monoid w, t ~ WriterT w) => Trans t
