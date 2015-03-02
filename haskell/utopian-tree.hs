import Control.Monad

-- The Utopian Tree goes through 2 cycles of growth every year. The first growth cycle
-- occurs during the spring, when it doubles in height. The second growth cycle occurs
-- during the summer, when its height increases by 1 meter.
-- Now, a new Utopian Tree sapling is planted at the onset of spring. Its height is 1 meter.
-- Can you find the height of the tree after N growth cycles?

growthCycle :: [Int] -> Int -> Int -> Int
growthCycle [] _ height = height
growthCycle (c:cs) cycleNo height = if odd cycleNo
                                  then growthCycle cs (succ cycleNo) (height*2)
                                  else growthCycle cs (succ cycleNo) (succ height)

doGrowth :: [Int] -> IO()
doGrowth [] = putStrLn ""
doGrowth (n:ns) = do
  m <- readLn :: IO Int
  putStrLn $ show $ growthCycle (replicate m 1) 1 1
  doGrowth ns

main :: IO ()
main = do
  n <- readLn :: IO Int
  doGrowth $ replicate n 1
