import System.Environment (getArgs)
import Data.Char (ord)

main = do
        args <- getArgs
        content <- readFile $ head args
        let [a,b] = lines content
        print $ hamm a b

hamm :: [Char] -> [Char] -> Int
hamm xs ys = sum $ zipWith (\x y -> if (ord x) == (ord y) then 0 else 1) xs ys
