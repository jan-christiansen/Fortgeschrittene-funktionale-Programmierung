module FFP04Functions where


import Prelude hiding (map, Maybe(..), Either(..), (.), sum, product, length, foldr)


map :: (a -> b) -> [a] -> [b]
map _ []     = []
map f (x:xs) = f x : map f xs


data Maybe a = Nothing | Just a

safeHead :: [a] -> Maybe a
safeHead []    = Nothing
safeHead (x:_) = Just x


-- data (a,b) = (a,b)

data Either a b = Left a | Right b

v1 :: Either String Int
v1 = Left "bla"

v2 :: Either String Int
v2 = Right 4

safeHead2 :: [a] -> Either String a
safeHead2 []    = Left "Empty list"
safeHead2 (x:_) = Right x


inc :: Int -> Int
inc x = x + 1

square :: Int -> Int
square x = x * x

absAll xs = map abs xs

incAll xs = map (+1) xs

squareAll xs = map (\x -> x*x) xs


p :: Int -> Bool
p x = x > 1000

greater1000 :: [Int] -> [Int]
greater1000 xs = filter (>1000) xs

 -- (>e) = \x -> x>e
 -- (e>) = \x -> e>x

exp1 = map (2^) [1..10]


(.) :: (b -> c) -> (a -> b) -> (a -> c)
f . g = \x -> f (g x)


exp2 = map ((2^).(+1)) [1..10]

exp3 = map ((+1).(2^)) [1..10]


add :: Int -> (Int -> Int)
add x y = x+y

compose :: (b -> c) -> ((a -> b) -> (a -> c))
compose f g x = f (g x)


exp4 = map (add 1) [1..10]


-- sum :: [Int] -> Int
-- sum []     = 0
-- sum (x:xs) = x + sum xs

-- product :: [Int] -> Int
-- product []     = 1
-- product (x:xs) = x * product xs

-- length :: [a] -> Int
-- length []     = 0
-- length (_:xs) = 1 + length xs


-- g []     = e
-- g (x:xs) = f x (g xs)

foldr :: b -> (a -> b -> b) -> [a] -> b
foldr e _ []     = e
foldr e f (x:xs) = f x (foldr e f xs)

sum xs = foldr 0 (\x r -> x + r) xs

product xs = foldr 1 (\x r -> x * r) xs

length xs = foldr 0 (\x r -> 1 + r) xs
