module MyLib1 (someFunc) where

import MyLib2

someFunc :: IO ()
someFunc = do
  let str = show . eval $ Const 3
  putStrLn str
