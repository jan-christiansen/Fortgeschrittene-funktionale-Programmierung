module FFP01Basics where


-- comment

{-
comment
-}

magicNumber :: Int
magicNumber = 1
-- magicNumber = 2

i :: Integer
i = 123123124134124313413413414124

d :: Double
d = 1.2

typeError = fromIntegral i + d


b1 :: Bool
b1 = False

b2 :: Bool
b2 = True

c :: Char
c = '\n'

s :: String
s = "Hallo Welt!"

ex1 = 1 + 2

ex2 = 1 - 2

ex3 = 2.5 * 4.5

ex4 = 2.5 / 3.4

ex5 = mod 4 5

ex6 = 4 `mod` 5

ex7 = 2^20

ex8 = (-4) * (-5)


ex9 = False || True

e10 = not (False && True)

ex11 = 'a' /= 'b'

ex12 = "ab" <= "b"

ex13 = 3 + 4 * 6

ex14 = if 3 < 5 then 4 else 5


--fac :: Integer -> Integer
fac 0 = 1
fac n = fac (n - 1) * n

even :: Integer -> Bool
even n
   | mod n 2 == 0 = True
   | otherwise    = False


f :: Integer -> Integer -> Bool -> Integer
f x y b = x+y

--x = 3 + "a"
