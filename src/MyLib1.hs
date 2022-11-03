module MyLib1 (someFunc) where

import MyLib2

someFunc :: IO ()
someFunc = do
  let user = User "tom"
  putStrLn user.name
