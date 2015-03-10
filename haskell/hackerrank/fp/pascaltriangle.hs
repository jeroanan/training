import Data.Char
import Data.List

pascal :: Int -> [[Int]]
pascal 1 = [[1]]
pascal n = let prevrow = last $ pascal (n-1)
               lastindex = pred n in
  (pascal (n-1)) ++ [[if (x==0 || x==lastindex)
                      then 1
                      else (prevrow!!(x-1) + (prevrow!!x))
                      | x<-[0..lastindex]]]

getpascals n = [[xx | xx<-x] | x<-pascal n]

showpascal [] = []
showpascal (x:xs) = (show x)++" "++(showpascal xs)

main = do
  n <- readLn :: IO Int
  mapM_ putStrLn [showpascal x | x<-getpascals n]
