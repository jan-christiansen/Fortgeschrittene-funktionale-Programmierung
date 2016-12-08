module Parse where

import Prelude hiding (mapM,mapM_)
import Data.Char (toUpper)


data Base = U | A | C | G
  deriving Show

type RNA = [Base]

parseBase :: Char -> Maybe Base
parseBase = parseBaseUpper . toUpper
 where
   parseBaseUpper 'U'  = Just U
   parseBaseUpper 'A'  = Just A
   parseBaseUpper 'C'  = Just C
   parseBaseUpper 'G'  = Just G
   parseBaseUpper _    = Nothing

parseRNA :: String -> Maybe RNA
parseRNA []     = return []
parseRNA (c:cs) =
  parseBase c >>= (\b -> (parseRNA cs >>= \r -> return (b:r)))

parseRNA' :: String -> Maybe RNA
parseRNA' []     = return []
parseRNA' (c:cs) = do
  b <- parseBase c
  r <- parseRNA' cs
  return (b:r)


-- instance Monad (Either e) where


mapM :: Monad m => (a -> m b) -> [a] -> m [b]
mapM _ []     = return []
mapM f (x:xs) = do
  b <- f x
  bs <- mapM f xs
  return (b:bs)

parseRNA'' :: String -> Maybe RNA
parseRNA'' = mapM parseBase

mapM_ :: Monad m => (a -> m b) -> [a] -> m ()
mapM_ _ []     = return ()
mapM_ f (x:xs) = do
  f x
  mapM_ f xs


main :: IO ()
-- does not work because the right side has type [()]
-- main = mapM (putStrLn . show) [1..20]
main = mapM_ (putStrLn . show) [1..20]
