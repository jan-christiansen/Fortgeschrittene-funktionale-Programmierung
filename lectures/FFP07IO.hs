module FFP07IO where


-- import Prelude hiding (Functor)


-- map :: (a -> b) -> [a] -> [b]

-- mapList :: (a -> b) -> List a -> List b

-- mapTree :: (a -> b) -> Tree a -> Tree b

mapMaybe :: (a -> b) -> Maybe a -> Maybe b
mapMaybe _ Nothing  = Nothing
mapMaybe f (Just x) = Just (f x)


-- mapF :: (a -> b) -> f a -> f b


-- data Bool = True | False

-- data Maybe a = Just a | Nothing


-- class Functor f where
  -- fmap :: (a -> b) -> f a -> f b

-- instance Functor Int where

-- instance Functor [] where
--   -- fmap :: (a -> b) -> [a] -> [b]
--   fmap = map
--
-- instance Functor Maybe where
--   -- fmap :: (a -> b) -> Maybe a -> Maybe b
--   fmap _ Nothing  = Nothing
--   fmap f (Just x) = Just (f x)
--   -- fmap _ _ = Nothing


-- fmap id = id
-- fmap id x = x

-- fmap (f . g) = fmap f . fmap g
-- fmap (f . g) x = fmap f (fmap g x)

t1 :: (Int,Bool)
t1 = (1,False)

t2 :: (Int,Bool,Double)
t2 = (1,False,5.0)

t3 :: ()
t3 = ()

-- main :: IO ()

-- public static String sideEffect() {
--   System.out.println("Hallo");
--   return "result";
-- }

-- IO String

-- (>>) :: IO a -> IO b -> IO b
-- (>>=) :: IO a -> (a -> IO b) -> IO b
-- return :: a -> IO a

main :: IO ()
main =
  getLine >>= \str ->
  putStrLn (str ++ "!") >>
  putStrLn "Text" >>
  putStrLn str


-- f :: Int
-- f = putStrLn "Hello"

main2 :: IO ()
main2 = do
  str <- getLine
  putStrLn (str ++ "!")
  putStrLn "Text"
  putStrLn str


getLineSuffix :: IO String
getLineSuffix = do
  str <- getLine
  return (str ++ "!")

getLineSuffixF :: IO String
getLineSuffixF =
  fmap (++"!") getLine

getLineInt :: IO Int
getLineInt =
  fmap read getLine

  -- IO String

-- fmap :: (a -> b) -> IO a -> IO b
