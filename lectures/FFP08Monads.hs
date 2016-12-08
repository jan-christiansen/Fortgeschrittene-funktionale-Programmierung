module FPP08Monads where


import Prelude hiding (Monad(..))


class Monad m where
  return :: a -> m a

  (>>=) :: m a -> (a -> m b) -> m b

  (>>) :: m a -> m b -> m b
  m >> n = m >>= const n


-- monoid laws

-- empty <> m = m
-- m <> empty = m
-- (m <> n) <> o = m <> (n <> o)


-- monad laws

-- return a >>= f = f a
-- m >>= return = m
-- (m >>= f) >>= g = m >>= (\x -> f x >>= g)


-- main :: IO ()
-- main =

  -- left identity

  -- return "a" >>= putStrLn
  -- putStrLn "a"


  -- right identity

  -- putStrLn "a" >>= return
  -- putStrLn "a"


  -- associativity

  -- (putStrLn "a" >>= putStrLn) >>= putStrLn
  -- putStrLn "a" >>= (\x -> putStrLn x >>= putStrLn)


instance Monad Maybe where
  -- return :: a -> Maybe a

  -- Nothing does not satisfy the laws
  -- return x = Nothing

  return = Just

  -- (>>=) :: Maybe a -> (a -> Maybe b) -> Maybe b
  Nothing >>= _ = Nothing
  Just x  >>= k = k x


-- left identity fails with return x = Nothing

-- return 1 >>= (\x -> Just (x+1))
-- Nothing >>= (\x -> Just (x+1))
-- Nothing


-- example works with return = Just

-- return 1 >>= (\x -> Just (x+1))
-- Just 1 >>= (\x -> Just (x+1))
-- (\x -> Just (x+1)) 1
-- Just 2
