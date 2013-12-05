#!/usr/bin/runhaskell

import Control.Monad
import Control.Monad.Trans.Class
import Control.Monad.Trans.Maybe
import Data.Char
import Data.Maybe

-- valid if doesn't start with number
isValid :: String -> Bool
isValid s = length s >= 8 && any isAlpha s && any isNumber s && any isPunctuation s

getPassword :: IO (Maybe String)
getPassword = do s <- getLine
                 if isValid s then return $ Just s
                              else return Nothing


getValidPassword :: MaybeT IO String
getValidPassword = do s <- lift getLine
                      guard (isValid s)
                      return s

askPassword :: MaybeT IO ()
askPassword = do lift $ putStrLn "Insert new password:"
                 mv <- msum $ repeat getValidPassword
                 lift $ putStrLn "Storing in db..." 

--main = askPassword
main = runMaybeT askPassword

