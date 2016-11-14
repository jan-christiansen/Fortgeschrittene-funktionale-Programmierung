module FFP06TypeClasses where


import Prelude hiding (repeat, take)


square :: Int -> Int
square x = x * x


-- square (1+2)
-- ==
-- (1+2) * (1+2)
-- ==
-- 3 * (1+2)
-- ==
-- 3 * 3
-- ==
-- 9


loop = loop

test = const 1 loop


repeat :: a -> [a]
repeat x = x : repeat x

take :: Int -> [a] -> [a]
take _ []     = []
take n (x:xs) = if n<=0 then [] else x : take (n-1) xs

take2 :: Int -> [a] -> [a]
take2 n xxs =
  if n<=0
    then []
    else case xxs of
           []   -> []
           x:xs -> x : take2 (n-1) xs


-- take 2 (repeat 7)
-- ==
-- take 2 (7 : repeat 7)
-- ==
-- if 2<=0 then [] else 7 : take (2-1) (repeat 7)
-- ==
-- 7 : take (2-1) (repeat 7)
-- ==
-- 7 : take (2-1) (7 : repeat 7)
-- ==
-- 7 : if 2-1<=0 then [] else 7 : take (2-1-1) (repeat 7)
-- ==
-- 7 : if 1<=0 then [] else 7 : take (1-1) (repeat 7)
-- ==
-- 7 : 7 : take (1-1) (repeat 7)
-- ==
-- 7 : 7 : take (1-1) (7 : repeat 7)
-- ==
-- 7 : 7 : if 1-1<=0 then [] else 7 : take (1-1-1) (repeat 7)
-- ==
-- 7 : 7 : if 0<=0 then [] else 7 : take (0-1) (repeat 7)
-- ==
-- 7 : 7 : []


-- (==) :: forall a. a -> a -> Bool

-- (==) :: forall a. Eq a => a -> a -> Bool


data X = X
  deriving (Show,Read)

data T = A Int | B String | C X
  deriving (Show,Read)

f :: T -> Bool
f _ = False

instance Eq T where
  A i1 == A i2 = i1 == i2
  B s1 == B s2 = s1 == s2
  _    == _    = False

  -- t1 == t2 = not (t1 /= t2)
  -- t1 /= t2 = not (t1 == t2)


showSuffix :: Show a => a -> String
showSuffix x = show x ++ "!"


data Bit = O | I
  deriving Show

class Encode a where
  encode :: a -> [Bit]
  -- numberOfBits :: a -> Int


-- data First = First Bool
-- data Second = Second Bool

instance Encode Bool where
  -- encode :: Bool -> [Bit]
  -- encode :: Encode a => a -> [Bit]
  encode False = [O]
  encode True  = [I]

-- instance Encode Bool where
--   encode _ = []


instance Encode Int where
  encode = error "Have to implement"

instance Encode a => Encode (Maybe a) where
  encode = error ""

instance Encode a => Encode [a] where
  encode []     = []
  encode (x:xs) = encode x ++ encode xs


numberBits :: Encode a => a -> Int
-- numberBits = length . encode
-- numberBits x = (length . encode) x
numberBits x = length (encode x)
