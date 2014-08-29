import System.Environment (getArgs)

main = do
        args <- getArgs
        content <- readFile $ head args
        putStr $ map transcribe content

transcribe :: Char -> Char
transcribe 'T' = 'U'
transcribe  x  =  x
