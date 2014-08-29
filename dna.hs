import System.Environment (getArgs)
import qualified Data.Map as Map
import Data.Map (Map)
import Data.Char (isAlpha)

main = do
        args <- getArgs
        content <- readFile $ head args
        let filtered = filter isAlpha content
        let counts = foldr add Map.empty filtered
        let stringify = (map show) $ Map.elems counts
        putStr $ unwords $ stringify

fAlter :: (Num a) => Maybe a -> Maybe a
fAlter (Just n) = Just $ n + 1
fAlter Nothing = Just 1


add :: (Num a) => Char -> Map Char a -> Map Char a
add 'A' x = Map.alter fAlter 'A' x
add 'C' x = Map.alter fAlter 'C' x
add 'G' x = Map.alter fAlter 'G' x
add 'T' x = Map.alter fAlter 'T' x
add x _ = error ("bad input" ++ show x)
