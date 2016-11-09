
applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ _ [] = []
zipWith' _ [] _ = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys

flip' :: (a -> b -> c) -> b -> a -> c
flip' f x y = f y x

addOneToList   = map (+1)
addThreeToList = map (+3)
multTwoToList  = map (*2)



sum' :: Num a => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum' xs

sum'' :: Num a => [a] -> a
sum'' = foldl (+) 0

map'' f [] = []
map'' f (x:xs) = f x : map'' f xs

map' :: (a->b) -> [a] -> [b]
map' f xs = foldr (\ x acc -> f x : acc ) [] xs

a = foldr1 (\x acc -> if x > acc then x else acc)

b = foldl (\acc x -> x : acc) []

c p = foldr (\x acc -> if p x then x : acc else acc) []

d = foldl1 (\ _ x -> x)











