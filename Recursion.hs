
maximum' [] = error "empty list"
maximum' [x] = x
maximum' (x:xs) = max x (maximum' xs)

reverse' []     = []
reverse' (x:xs) = reverse' xs ++ [x]

repeat' x = x : repeat' x

zip' _ [] = []
zip' [] _ = []
zip' (x:xs) (y:ys) = (x,y) : zip' xs ys

quicksort :: Ord a => [a] -> [a]
quicksort []     = []
quicksort (x:xs) = smallerSorted ++ [x] ++ biggerSorted
  where smallerSorted = quicksort [ a | a <- xs, a <= x]
        biggerSorted  = quicksort [ a | a <- xs, a >  x]

multThree a b c = a * b * c

divideByTen = (/10)

isUpperAlphanum = (`elem` ['A'..'Z'])


