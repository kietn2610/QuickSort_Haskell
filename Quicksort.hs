qsort :: Ord a => [a] -> [a]
qsort [] = []
qsort (x:xs) =
  let smallerSorted = qsort [a | a <- xs, a <= x]
      biggerSorted = qsort [a | a <- xs, a > x]
  in  smallerSorted ++ [x] ++ biggerSorted

main :: IO ()    
main = undefined
