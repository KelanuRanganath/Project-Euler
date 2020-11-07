import Control.Monad (liftM2)

naturalSum :: Int -> Int
naturalSum = flip div 2.liftM2 (+) (id) (^2).div 1000

main :: IO ()
main = print.sum $ map naturalSum [3,5]
