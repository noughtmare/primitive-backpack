module Main where

import GHC.IO
import GHC.ST
import Test
import GHC.Prim
import Control.Monad.Trans.Reader

test = sieve

main :: IO ()
main = putStrLn "Hello, Haskell!"
