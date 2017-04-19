readsInt :: String -> [Int]
readsInt s = let ws = words s in map read ws


main = mapM_ print(readsInt "This is a string \n m \n oh yeah")