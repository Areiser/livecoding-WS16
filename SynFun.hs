module SynFun where

lucky :: (Integral a, Show a) => a -> String
lucky 7 = "Lucky"
lucky 9 = "Not"
lucky x = error ("lucky not defined for " ++ show x)

factorial 1 = 1
factorial n = n * factorial (n -1)

fib 1 = 1
fib 0 = 1
fib n = fib (n-1) + fib (n-2)


threeInAList [_, 7, _] = False
threeInAList [_, _, x] = x < 10
threeInAList [_, _, _] = True
threeInAList _         = False

length' [] = 0
length' (_:xs) = 1 + length' xs

f :: (Int, [Bool], (Float, String)) -> (Float, String)
f (1,_,_) = (1, "Hallo")
f (_,_,(1.2,str)) = (0, str)
f (_,_,t@(_, "Hallo")) = t

max' a b = if a < b then b else a

max'' a b
  | a < b     = b
  | otherwise = a

bmiTell weight height
  | test1 = "Untergewicht"
  | bmi <= 25.0 = let xs = "ormalgewicht"
                  in x:xs
                     where x = 'N'
  | bmi <= 30.0 = "Übergewicht"
  | otherwise   = "Bigger"
                    where bmi = weight / height ^ 2
                          skinny = 18.5
                          test1 = bmi <= skinny


cylinder r h =
  let sideArea = 2 * pi * r * h
      topArea = pi * r^2
 in sideArea + 2 * topArea


head' [] = error "empty list"
head' (x:_) = x

head'' xs
  | null xs = error "..."
  | otherwise = head xs

head''' xs = case xs of
   [] -> error "empty list"
   (x:_) -> x

describeList xs =
  "This list is " ++ case xs of [] -> " empty"
                                [x] -> " a singleton list"
                                _ -> " a longer list"








