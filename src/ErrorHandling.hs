module ErrorHandling where
import Data.Char
import Data.Maybe
import Text.Read
import Compare ( isSorted )

containsNo :: String -> Int
containsNo w =
    if isNothing(readMaybe w :: Maybe Int)
        then 84
    else read w :: Int

errorHandling :: [String] -> [Int] -> Int
errorHandling [] a = if isSorted a then 0 else 84
errorHandling a b = 0

checkNumList :: String -> [String] -> Int
checkNumList _ [] = 0
checkNumList b (a:as) =
    if containsNo a == 84 || null b
        then 84
    else checkNumList b as