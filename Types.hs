module Types where

data MyBool = MyTrue | MyFalse

f :: Int -> MyBool
f i | i < 0 = MyFalse
    | otherwise = MyTrue

data Shape = Circle Float Float Float
           | Rectangle Float Float Float Float


