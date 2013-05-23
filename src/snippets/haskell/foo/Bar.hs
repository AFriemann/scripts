module Bar where

bar :: Int -> Int
bar x = x * 10

barbar :: Int -> Int
barbar x = (bar x) * (bar x)
