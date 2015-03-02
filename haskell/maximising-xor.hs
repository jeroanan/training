import Data.Bits

newMax :: Int -> Int -> Int
newMax x m = if x > m
             then x
             else m

newB :: Int -> Int -> Int -> Int
newB currentB maxB currentA =
  if currentB == maxB
  then succ currentA
  else succ currentB

newA :: Int ->  Int -> Int -> Int
newA currentA currentB maxB =
  if currentB == maxB
  then succ currentA
  else currentA

maximiseXor :: (Int,Int) -> (Int,Int) -> Int -> Int
maximiseXor (a, b) (maxA, maxB) currentMax =
  if a == maxA && b == maxB
  then theMax
  else maximiseXor (nextA, nextB) (maxA, maxB) theMax
  where x = a `xor` b
        theMax = newMax x currentMax
        nextA = newA a b maxB
        nextB = newB b maxB a

main :: IO ()
main = do
  a <- readLn :: IO Int
  b <- readLn :: IO Int
  putStrLn $ show $ maximiseXor (a, a) (b, b) 0
