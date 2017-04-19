{-

Da leggere: let ws = words s; map read ws;
la keyword in non fa altro che rendere disponibile la variabile all'interno di un'altra funzione

words = ritorna una lista di parole, andando a separare la stringa iniziale per spazi e a capo
read = trasforma la variabile al suo tipo più "veritiero"
Es "12" -> 12 / "True" -> True / 
-}
readsInt :: String -> [Int]
readsInt s = let ws = words s in map read ws


{-

Può essere rapposrtato ad una funzione/lambda
Da: foldr (\x (min, max) -> (if x > min then min else x, if x > max then x else max))
A: reduce((acc,x) => [x > acc[0] ? acc[0] : x, x < acc[1] ? acc[1] : x],[0,0]);
-}
minMax :: Ord a => [a] -> Maybe (a, a)
minMax(h : t) = Just $ foldr
    (\x (min, max) -> (if x > min then min else x, if x > max then x else max))
    (h, h)
    t
minMax _ = Nothing

main :: IO ()
main = do
    content <- readFile "/var/hello-world/src/numbers.txt"
    let values = readsInt content
    let count = length values
    let total = sum values
    let mean = fromIntegral total / fromIntegral count
    let range = minMax values
    print count
    print total
    print mean
    print range