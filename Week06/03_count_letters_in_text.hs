import Data.Char
import Data.List

countOccurrences :: String -> [(Char, Int)]
countOccurrences = map (\ xs -> (head xs, length xs)) . group . sort . map toLower