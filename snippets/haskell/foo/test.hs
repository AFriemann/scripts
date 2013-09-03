--------------------------------------------------------------------------------
-- | 
-- Module      : test module
-- Note        : 
-- 
-- testing stuff
-- 
--------------------------------------------------------------------------------

import Bar

main = do
  putStrLn "Please enter digit, will return (digit*10)^2:"
  x <- readLn
  print (barbar x)
  putStrLn "Please enter another digit, will return true if bigger than 10:"
  x <- readLn
  print (foo x)
  putStrLn "Please enter another digit:"
  x <- readLn
  print (foobar x)

