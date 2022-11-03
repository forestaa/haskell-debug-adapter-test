module MyLib2 (eval, Expr (..)) where

data Expr a where
  Const :: Int -> Expr Int
  Add :: Expr Int -> Expr Int -> Expr Int
  Equal :: Expr Int -> Expr Int -> Expr Bool
  IfThenElse :: Expr Bool -> Expr a -> Expr a -> Expr a

eval :: Expr a -> a
eval e = case e of
  Const x ->
    x
  Add e1 e2 ->
    eval e1 + eval e2
  Equal e1 e2 ->
    eval e1 == eval e2
  IfThenElse cond then_ else_ ->
    if eval cond then eval then_ else eval else_
