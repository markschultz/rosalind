{-# LANGUAGE BangPatterns #-}
import System.Environment (getArgs)

main = do
        args <- getArgs
        let n = read $ args !! 0
        let k = read $ args !! 1
        print $ rabbitFib n k

rabbitFib :: Int -> Int -> Int
rabbitFib n k = go (n-1) (1,0)
    where
        go !n (!a, !b) | n == 0 = a
                       | otherwise = go (n-1) ((a+k*b),a)
