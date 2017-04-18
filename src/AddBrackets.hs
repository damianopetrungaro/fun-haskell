addBrackets x = "[" ++ x ++ "]"

main = print $ map addBrackets ["1", "2", "3"]