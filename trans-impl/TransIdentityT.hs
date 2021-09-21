module TransIdentityT where

import Control.Monad.Trans.Identity
import Control.Monad.Trans.Class

class MonadTrans t => Trans t

instance t ~ IdentityT => Trans t
