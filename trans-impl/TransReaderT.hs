module TransReaderT where

import Control.Monad.Trans.Reader
import Control.Monad.Trans.Class

class MonadTrans t => Trans t

instance t ~ ReaderT r => Trans t
