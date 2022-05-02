import System.Environment 

fib :: Integer -> Integer
fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

getIntArg :: IO Integer
getIntArg = fmap (read . head) getArgs

--parse stdin and generate n'th fibonacci
main :: IO ()
main = do
    n <- getIntArg
    print (fib n)