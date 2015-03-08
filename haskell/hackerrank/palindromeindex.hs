palindromeIndex s n =
  if dropped == droprev
  then droprev
  else palindromeIndex (tail s) (succ n)
  where dropped = drop 1 s
        droprev = reverse dropped

getPalindromeIndices 0 = return()
getPalindromeIndices n = do
  l <- getLine
  if l == reverse l
  then putStrLn "-1"
  else (putStrLn . show) $ palindromeIndex l 0

  getPalindromeIndices (pred n)

main = do
  n <- readLn :: IO(Int)
  getPalindromeIndices n
