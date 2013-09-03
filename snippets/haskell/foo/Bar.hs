module Bar where

bar :: Int -> Int
bar x = x * 10

barbar :: Int -> Int
barbar x = (bar x) * (bar x)

foo :: Int -> Bool
foo x | x < 10 = True
      | otherwise = False

--foobar :: [Int] -> [Int]
--foobar num = [x | x -> num, x > 10]
