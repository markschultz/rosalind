import System.Environment (getArgs)
import Data.Char (isAlpha)

main = do
        args <- getArgs
        content <- readFile $ head args
        let filtered = filter isAlpha content
        putStr $ map compliment $ reverse filtered

compliment :: Char -> Char
compliment 'A' = 'T'
compliment 'T' = 'A'
compliment 'C' = 'G'
compliment 'G' = 'C'
compliment _ = error "bad input"
