#!/usr/bin/runhaskell

import Control.Monad
import Control.Monad.Trans.State
import System.Random

rollDiceIO :: IO (Int,Int)
rollDiceIO = liftM2 (,) (randomRIO (1,6)) (randomRIO (1,6))

--TODO Excercise
--rollDiceNIO :: Int -> IO [Int]

--TODO Excercise
--rollDice :: StdGen -> ((Int, Int), StdGen)

type GeneratorState = State StdGen


rollDie :: GeneratorState Int
rollDie = do gen <- get
             let (value, next) = randomR (1,6) gen
             put next
             return value

rollDice :: GeneratorState (Int, Int)
rollDice = liftM2 (,) rollDie rollDie

-- TODO Excercise
-- rollNDice :: Int -> GeneratorState [Int]
             


