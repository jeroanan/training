module Talentbuddy where

  get_bounced_users :: (RealFrac a, Integral b) => a -> a  -> b
  get_bounced_users n b = (floor $ n-(n*perc))
    where perc=b/100

  compute_active_users :: Integer -> Integer -> IO ()
  compute_active_users n b = putStrLn $ show $ get_bounced_users (fromIntegral n) (fromIntegral b)
