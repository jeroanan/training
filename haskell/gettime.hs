get_seconds :: Integer -> Integer
get_seconds seconds = secondsLeft
  where hoursInSeconds = (get_hours seconds) * 3600
        minutesInSeconds = (get_minutes seconds) * 60
        secondsLeft = seconds - hoursInSeconds - minutesInSeconds

get_minutes :: Integer -> Integer
get_minutes seconds = floor $ (fromIntegral secondsLeft) / 60
  where hoursInSeconds = (get_hours seconds) * 3600
        secondsLeft = seconds - hoursInSeconds

get_hours :: Integer -> Integer
get_hours seconds = floor $ ((fromIntegral seconds) / 60)/60

pad_number :: Integer -> String
pad_number n  | n < 10 = "0" ++ show n
              | otherwise = show n

convert_seconds :: Integer -> IO ()
convert_seconds s = do
  putStr $ hours ++ ":" ++ minutes ++ ":" ++ seconds
  where hours = (pad_number .get_hours) s
        minutes = (pad_number . get_minutes) s
        seconds = (pad_number . get_seconds) s

main :: IO()
main = convert_seconds 34565
