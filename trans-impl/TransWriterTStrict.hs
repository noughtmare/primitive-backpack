module TransWriterTStrict where

import Control.Monad.Trans.Class
import Control.Monad.Trans.Writer.Strict

class MonadTrans t => Trans t

instance (Monoid w, t ~ WriterT w) => Trans t
