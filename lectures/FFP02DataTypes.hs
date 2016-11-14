module FFP02DataTypes where


two :: (Int,String)
two = (2,"Hallo")

bar :: (Int,Int) -> Int
bar (x,y) = x + y

data Weekday =
    Monday
  | Tuesday
  | Wednesday
  | Thursday
  | Friday
  | Saturday
  | Sunday
  deriving Show

workday :: Weekday -> Bool
workday Saturday = False
workday Sunday   = False
workday _        = True

workday2 :: Weekday -> Bool
workday2 w =
  case w of
    Saturday -> False
    Sunday   -> False
    _        -> True

abbreviation :: Weekday -> String
abbreviation Monday  = "Mo"
abbreviation Tuesday = "Tu"


data Point = Point2 Double Double
           | Point3 Double Double Double
 deriving Show

p :: Point
p = Point2 2.3 4.5

t :: (Int,String)
t = (1,"a")

foo :: (Int,String) -> Int
foo (1,"a") = 3
foo _       = 4

first :: Point -> Double
first (Point2 x _)   = x
first (Point3 x _ _) = x

date :: Date
date = Date Tuesday 2016 11 10

data Date =
  Date {
    weekday :: Weekday,
    year :: Int,
    month :: Int,
    day :: Int
  }
 deriving Show

extract :: Date -> String
extract d =
   "The date " ++ show d ++ " " ++ show (year d)

extract2 :: Date -> String
extract2 d@(Date Monday _ _ _) =
  "The date " ++ show d ++ " " ++ show (year d)
extract2 _ = "otherwise"


data Temp =
    A
  | B Int Temp

a :: Temp
a = A

b :: Temp
b = B 42 (B 12 (B 23 A))


data IntList =
    Nil
  | Cons Int IntList
 deriving Show

list1 :: IntList
list1 = Nil

list2 :: IntList
list2 = Cons 42 Nil

list3 :: IntList
list3 = Cons 13 (Cons 14 Nil)

list4 :: IntList
list4 = Cons 13 (Cons 14 (Cons 15 Nil))

list5 :: IntList
list5 = Cons 13 (Cons 14 (Cons 15 (Cons 16 Nil)))


intListLength :: IntList -> Int
intListLength Nil        = 0
intListLength (Cons _ l) = 1 + intListLength l

everySecond :: IntList -> IntList
everySecond Nil                 = Nil
everySecond (Cons _ Nil)        = Nil
everySecond (Cons _ (Cons i l)) = Cons i (everySecond l)


data IntTree =
    Leaf Int
  | Node Int IntTree IntTree

tree1 :: IntTree
tree1 = Node 5 (Leaf 2) (Node 4 (Leaf 1) (Leaf 2))
