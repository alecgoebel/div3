import Control.Monad.Trans.Class
import Control.Monad.Trans.State
import Control.Monad.Trans.Writer

--type Parser = StateT String []
--
--runParser :: Parser a -> String -> [a]
--runParser p s = [ x | (x, "") <- runStateT p s]
--
--item :: Parser Char
--item = do
--    c:cs <- get
--    put cs
--    return c
--

type Parser = WriterT (Sum Int) (StateT String [])

runParser :: Parser a -> String -> [(a, Int)]
runParser p s = [(x,n) | ((x, Sum n), "") <- runStateT (runWriterT p) s]

item :: Parser Char
item = do
    c:cs <- lift get
    lift (put cs)
    return c


tick :: Parser ()
tick = tell (Sum 1)
