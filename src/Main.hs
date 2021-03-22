import System.Environment
import System.Exit
import Data.Char
import ErrorHandling
import Parameters
import Basic

main :: IO ()
main = do
    args <- getArgs
    param <- getLine
    if errorHandling (words param) (map (read::String->Int) args) == 84
        then exitWith (ExitFailure 84)
    else let rt = middleMan param ((,) (map (read::String->Int) args) []) in
        case rt of
            0 -> putStrLn "OK"
            84 -> putStrLn "KO"