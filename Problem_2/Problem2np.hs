goldenRatio :: Double
goldenRatio = 1.6180339887

closedForm :: Int -> Integer
closedForm = round.(/sqrt 5).(goldenRatio**).flip (-) 3.(*3).fromIntegral

upperBound :: Int
upperBound = (flip div 3).(+3).floor.logBase goldenRatio $ (+ 0.5).(* sqrt 5) $ 4000000

solve :: Integer
solve = sum $ map closedForm [0..upperBound]
