module FFP03Polymorphic where


import Prelude hiding (length, map)
-- import qualified Module as M


data IntList =
    Nil
  | Cons Int IntList
 deriving Show


-- absAll :: IntList -> IntList
-- absAll Nil          = Nil
-- absAll (Cons x xs)  = Cons (abs x) (absAll xs)
--
-- incAll :: IntList -> IntList
-- incAll Nil         = Nil
-- incAll (Cons x xs) = Cons (inc x) (incAll xs)
--
-- squareAll :: IntList -> IntList
-- squareAll Nil         = Nil
-- squareAll (Cons x xs) = Cons (square x) (squareAll xs)

inc :: Int -> Int
inc x = x + 1

square :: Int -> Int
square x = x * x

absAll :: IntList -> IntList
absAll l = mapList abs l

incAll :: IntList -> IntList
incAll l = mapList inc l

squareAll :: IntList -> IntList
squareAll l = mapList square l


-- keepOnlyEven :: IntList -> IntList
-- keepOnlyEven Nil         = Nil
-- keepOnlyEven (Cons x xs)
--   | even x    = Cons x (keepOnlyEven xs)
--   | otherwise = keepOnlyEven xs
--
-- keepSmaller5 :: IntList -> IntList
-- keepSmaller5 Nil         = Nil
-- keepSmaller5 (Cons x xs)
--   | smaller5 x = Cons x (keepSmaller5 xs)
--   | otherwise  = keepSmaller5 xs

smaller5 :: Int -> Bool
smaller5 x = x < 5

filterList :: (Int -> Bool) -> IntList -> IntList
filterList _ Nil         = Nil
filterList p (Cons x xs)
  | p x       = Cons x (filterList p xs)
  | otherwise = filterList p xs

keepOnlyEven l = filterList even l

keepSmaller5 l = filterList smaller5 l


data List a =
    LNil
  | LCons a (List a)

llist1 :: List Int
llist1 = LNil

llist2 :: List String
llist2 = LCons "a" (LCons "b" LNil)


-- data [a] =
--     []
--   | a : [a]

list1 :: [Int]
list1 = 1 : []

list2 :: [Int]
list2 = []

list3 :: [String]
list3 = "a" : "b" : "c" : []

list4 :: [Bool]
list4 = [False, False, True]

list5 :: [Int]
list5 = [3..100] -- enumFromTo


data Tree a =
    Empty
  | Node (Tree a) a (Tree a)

tree1 :: Tree Char
tree1 = Empty

tree2 :: Tree Char
tree2 = Node Empty 'b' (Node Empty 'c' Empty)


length :: [a] -> Int
length []     = 0
length (_:xs) = length xs + 1


mapList :: (Int -> Int) -> IntList -> IntList
mapList _ Nil         = Nil
mapList f (Cons x xs) = Cons (f x) (mapList f xs)

map :: (a -> b) -> [a] -> [b]
map _ []     = []
map f (x:xs) = f x : map f xs
