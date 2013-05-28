--------------------------------------------------------------------------------
-- | 
-- Module      : exponent
-- Note        : 
-- 
-- calculates x^n for given x,n
-- 
--------------------------------------------------------------------------------

-- komplexität von expprim in O(n)
expprim :: Int -> Int -> Int
expprim x n | n == 0 = 1
            | otherwise = x * rest
            where rest = expprim x (n-1)

exp :: Int -> Int -> Int
exp x n = 0

main = do
  putStrLn "Please enter the digit you want to exponentiate:"
  x <- readLn
  putStrLn "Now, please enter the exponent:"
  n <- readLn
  print (expprim x n)
  
