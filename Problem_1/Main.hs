import Control.Monad (liftM2)
import Control.Parallel.Strategies (runEval, rseq)

naturalSum :: Int -> Int
naturalSum = flip div 2.liftM2 (+) (id) (^2).div 1000

multiples :: [Int]
multiples = [3, 5]

main :: IO ()
main = print $ sum $ runEval $ sequence $ map (rseq.naturalSum) multiples
