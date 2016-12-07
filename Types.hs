module Types
    where
{-
data Person = Person String String Int Float String String
            deriving (Show)

firstName :: Person -> String
firstName (Person firstname _ _ _ _ _) = firstname

lastName :: Person -> String
lastName (Person _ lastname _ _ _ _) = lastname
...
-}
-- Record Syntax

type Age = Int
data Person = Person
            { firstName :: String
            , lastName :: String
            , age :: Age
            , height :: Float
            , phoneNumber :: String
            , flavor :: String
            }
            deriving (Show)




data MyBool = MyTrue | MyFalse

f :: Int -> MyBool
f i | i < 0 = MyFalse
    | otherwise = MyTrue

data Day = Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | Sunday
    deriving (Show, Read, Eq, Ord, Bounded, Enum)

type Point = (Float, Float)

data Shape = Circle Point Float
           | Rectangle Point Point
  deriving (Show, Eq)

data Tree a = Leaf | Node a (Tree a) (Tree a)
    deriving (Show)

instance Functor Tree where
    fmap f Leaf = Leaf
    fmap f (Node x left right) = Node (f x) (fmap f left) (fmap f right)

instance Eq a => Eq (Tree a) where
    Leaf == Leaf = True
    Node x _ _ == Node y _ _ = x == y
    _ == _ = False


exampleTree = Node 10 (Node 8 Leaf (Node 1 Leaf Leaf)) (Node 12 Leaf Leaf)

sumTree :: (Num a) => Tree a -> a
sumTree Leaf = 0
sumTree (Node x left right) = x + sumTree left + sumTree right




infixr 5 :-:
data List a = Empty | a :-: (List a)
    deriving (Show, Read, Eq, Ord)





surface :: Shape -> Float
surface (Circle _ r) = pi * r ^ 2
surface (Rectangle (x1,y1) (x2,y2)) = (abs $ x2 - x1) * (abs $ y2 - y1)

div' :: Int -> Int -> Either String Int
div' 0 0 = Left "both zero"
div' _ 0 = Left "only divisor zero"
div' x y = Right $ x `div` y

-- data Maybe a = Nothing | Just a
{-
class Eq a where
 (==) :: a -> a -> Bool
 (/=) :: a -> a -> Bool
 x == y = not (x /= y)
 x /= y = not (x == y)
-}

data TrafficLight = Red | Yellow | Green

instance Eq TrafficLight where
  Red == Red = True
  Yellow == Yellow = True
  Green == Green = True
  _ == _ = False

instance Show TrafficLight where
    show Red = "red light"
    show Yellow = "green light"
    show Green = "green light"



xyz = 1234

class YesNo a where
  yesno :: a -> Bool

instance YesNo Bool where
  yesno = id

instance YesNo [a] where
  yesno = null

instance YesNo Int where
  yesno = (==0)

jaNein x = if yesno x then "Ja" else "Nein"






