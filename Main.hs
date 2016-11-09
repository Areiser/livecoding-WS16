
removeNonUppercase :: String -> String
removeNonUppercase xs = [ c | c <- xs, c `elem` ['A'..'Z'] ]

addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z


boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!"   | x <- xs, odd x ]


x ..- y = 3

doubleUs x y = doubleMe x + doubleMe y
-- doubleMe :: Int -> Int

doubleSmallNumberAndAddOne x
 = (if x > 100
    then x
    else x * 2) + 1

doubleMe x = x + x

doubleMe' x = 2 * x

doubleMe'' x = 2 * x

doubleMe''' x = 2 * x

add' x y = x + y

(+++) x y = x + y

c = 'a'


