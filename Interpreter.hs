module Interpreter where 

import Lexer 
import Parser

isValue :: Expr -> Bool 
isValue BTrue = True 
isValue BFalse = True
isValue (Num _) = True 
isValue (Lam _ _ _) = True
isValue _ = False 

subst :: String -> Expr -> Expr -> Expr 
subst x n (Var v) = if (x == v) then
                      n 
                    else 
                      (Var v)
subst x n (Lam v t b) = Lam v t (subst x n b)
subst x n (App e1 e2) = App (subst x n e1) (subst x n e2)
subst x n (Add e1 e2) = Add (subst x n e1) (subst x n e2)
subst x n (Sub e1 e2) = Sub (subst x n e1) (subst x n e2)
subst x n (Mult e1 e2) = Mult (subst x n e1) (subst x n e2)
subst x n (And e1 e2) = And (subst x n e1) (subst x n e2)
subst x n (Or e1 e2) = Or (subst x n e1) (subst x n e2)
subst x n (Equals e1 e2) = Equals (subst x n e1) (subst x n e2)
subst x n (NotEq e1 e2) = NotEq (subst x n e1) (subst x n e2)
subst x n (Smaller e1 e2) = Smaller (subst x n e1) (subst x n e2)
subst x n (Greater e1 e2) = Greater (subst x n e1) (subst x n e2)
subst x n (SmallerEq e1 e2) = SmallerEq (subst x n e1) (subst x n e2)
subst x n (GreaterEq e1 e2) = GreaterEq (subst x n e1) (subst x n e2)
subst x n (If e1 e2 e3) = If (subst x n e1) (subst x n e2) (subst x n e3)
subst x n (Paren e) = Paren (subst x n e)
subst x n (Let v e1 e2) = Let v (subst x n e1) (subst x n e2)
subst x n (Where e1 v e2) = Where (subst x n e1) v (subst x n e2)
subst x n e = e 

step :: Expr -> Expr 
step (Add (Num n1) (Num n2)) = Num (n1 + n2)
step (Add (Num n) e) = Add (Num n) (step e)
step (Add e1 e2) = Add (step e1) e2 
step (Sub (Num n1) (Num n2)) = Num (n1 - n2)
step (Sub (Num n) e) = Sub (Num n) (step e)
step (Sub e1 e2) = Sub (step e1) e2
step (Mult (Num n1) (Num n2)) = Num (n1 * n2)
step (Mult (Num n) e) = Mult (Num n) (step e)
step (Mult e1 e2) = Mult (step e1) e2
step (And BFalse _) = BFalse
step (And BTrue e) = e
step (And e1 e2) = And (step e1) e2
step (Or BTrue _) = BTrue
step (Or BFalse e) = e
step (Or e1 e2) = Or (step e1) e2
step (Equals e1 e2)   | isValue e1 && isValue e2 = if(e1 == e2) then BTrue else BFalse
                      | isValue e1 = Equals e1 (step e2)
                      | otherwise = Equals (step e1) e2
step (NotEq e1 e2)    | isValue e1 && isValue e2 = if(e1 == e2) then BFalse else BTrue
                      | isValue e1 = Equals e1 (step e2)
                      | otherwise = Equals (step e1) e2                     
step (Smaller (Num n1) (Num n2)) | n1 < n2 = BTrue
                                 | otherwise = BFalse
step (Smaller (Num n1) e) = Smaller (Num n1) (step e)
step (Smaller e1 e2) = Smaller (step e1) e2
step (Greater (Num n1) (Num n2)) | n1 > n2 = BTrue
                                 | otherwise = BFalse
step (Greater (Num n1) e) = Greater (Num n1) (step e)
step (Greater e1 e2) = Greater (step e1) e2
step (SmallerEq (Num n1) (Num n2)) | n1 <= n2 = BTrue
                                  | otherwise = BFalse
step (SmallerEq (Num n1) e) = SmallerEq (Num n1) (step e)
step (SmallerEq e1 e2) = Smaller (step e1) e2
step (GreaterEq (Num n1) (Num n2)) | n1 >= n2 = BTrue
                                 | otherwise = BFalse
step (GreaterEq (Num n1) e) = GreaterEq (Num n1) (step e)
step (GreaterEq e1 e2) = GreaterEq (step e1) e2
step (If BFalse e1 e2) = e2 
step (If BTrue e1 e2) = e1 
step (If e e1 e2) = If (step e) e1 e2 
step (Paren e) = e
step (App (Lam x t b) e2) | isValue e2 = subst x e2 b 
                        | otherwise = (App (Lam x t b) (step e2))
step (App e1 e2) = App (step e1) e2
step (Let v e1 e2) | isValue e1 = subst v e1 e2 
                   | otherwise = Let v (step e1) e2
step (Where e1 v e2) | isValue e2 = subst v e2 e1 
                     | otherwise = Where e1 v (step e2)                  
step e = error (show e)

eval :: Expr -> Expr 
eval e | isValue e = e 
       | otherwise = eval (step e)