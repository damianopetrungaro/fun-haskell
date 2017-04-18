f x y = x + y
g x y = x * y
main = print $ map (g . f) [1,2,3,4,5]