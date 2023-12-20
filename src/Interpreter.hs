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
subst x n (Sub e1 e2) = Sub (subst x n e1) (subst x n e2) -- Adicionado para Subtração
subst x n (Mul e1 e2) = Mul (subst x n e1) (subst x n e2) -- Adicionado para Multiplicação
subst x n (Mod e1 e2) = Mod (subst x n e1) (subst x n e2) -- | Adicionado para Módulo |
subst x n (And e1 e2) = And (subst x n e1) (subst x n e2)
subst x n (Or e1 e2) = Or (subst x n e1) (subst x n e2) -- Adicionado para Or
subst x n (Xor e1 e2) = Xor (subst x n e1) (subst x n e2) -- Adicionado para Xor
subst x n (Equal e1 e2) = Equal (subst x n e1) (subst x n e2) -- Adicionado para == (Igual)
subst x n (LessThan e1 e2) = LessThan (subst x n e1) (subst x n e2) -- Adicionado para < (Menor Que)
subst x n (BiggerThan e1 e2) = BiggerThan (subst x n e1) (subst x n e2) -- Adicionado para > (Maior Que)
subst x n (LessEqual e1 e2) = LessEqual (subst x n e1) (subst x n e2) -- Adicionado para <= (Menor ou Igual)
subst x n (BiggerEqual e1 e2) = BiggerEqual (subst x n e1) (subst x n e2) -- Adicionado para >= (Maior ou Igual)
subst x n (Not e1) = Not (subst x n e1) -- | Adicionado para Not |
subst x n (If e1 e2 e3) = If (subst x n e1) (subst x n e2) (subst x n e3)
subst x n (TernIf e1 e2 e3) = TernIf (subst x n e1) (subst x n e2) (subst x n e3) -- | Adicionado para o condicional ternário |
subst x n (For e1 e2 e3) = For (subst x n e1) (subst x n e2) (subst x n e3)
subst x n (Paren e) = Paren (subst x n e)
subst x n (Let v e1 e2) = Let v (subst x n e1) (subst x n e2)
subst x n e = e
--subst x n e = error (show e)

step :: Expr -> Expr
step (Add (Num n1) (Num n2)) = Num (n1 + n2)
step (Add (Num n) e) = Add (Num n) (step e)
step (Add e1 e2) = Add (step e1) e2
step (Sub (Num n1) (Num n2)) = Num (n1 - n2) -- Adicionado para Subtração
step (Sub (Num n) e) = Sub (Num n) (step e)  -- Adicionado para Subtração
step (Sub e1 e2) = Sub (step e1) e2          -- Adicionado para Subtração
step (Mul (Num n1) (Num n2)) = Num (n1 * n2) -- Adicionado para Multiplicação
step (Mul (Num n) e) = Mul (Num n) (step e)  -- Adicionado para Multiplicação
step (Mul e1 e2) = Mul (step e1) e2          -- Adicionado para Multiplicação
step (Mod (Num n1) (Num n2)) = Num (n1 `mod` n2) -- | Adicionado para Módulo |
step (Mod (Num n) e) = Mod (Num n) (step e)
step (Mod e1 e2) = Mod (step e1) e2
step (And BFalse _) = BFalse
step (And BTrue e) = e
step (And e1 e2) = And (step e1) e2
step (Or BTrue _) = BTrue -- Adicionado para Or
step (Or BFalse e) = e
step (Or e1 e2) = Or (step e1) e2
step (Xor BTrue BTrue) = BFalse -- | Adicionado para Xor |
step (Xor BFalse BFalse) = BFalse
step (Xor BTrue BFalse) = BTrue
step (Xor BFalse BTrue) = BTrue
step (Xor e1 e2) | isValue e1 = Xor e1 (step e2)
                 | otherwise = Xor (step e1) e2
step (Equal (Num n1) (Num n2)) = if n1 == n2 then BTrue else BFalse -- Adicionado para == (Igual)
step (Equal BTrue BTrue) = BTrue
step (Equal BFalse BFalse) = BTrue
step (Equal BTrue BFalse) = BFalse
step (Equal BFalse BTrue) = BFalse
step (Equal (Num n) e) = Equal (Num n) (step e)
step (Equal BTrue e) = Equal BTrue (step e)
step (Equal BFalse e) = Equal BFalse (step e)
step (Equal e1 e2) = Equal (step e1) e2
step (NotEqual BTrue BTrue) = BFalse
step (NotEqual BFalse BFalse) = BFalse
step (NotEqual BTrue BFalse) = BTrue
step (NotEqual BFalse BTrue) = BTrue
step (NotEqual (Num n1) (Num n2)) = if n1 /= n2 then BTrue else BFalse -- | Adicionado para != (Diferente) |
step (NotEqual (Num n) e) = NotEqual (Num n) (step e)
step (NotEqual e1 e2) = NotEqual (step e1) e2 
step (LessThan (Num n1) (Num n2)) = if n1 < n2 then BTrue else BFalse  -- Adicionado para < (Menor que)
step (LessThan (Num n) e) = LessThan (Num n) (step e)
step (LessThan e1 e2) = LessThan (step e1) e2
step (BiggerThan (Num n1) (Num n2)) = if n1 > n2 then BTrue else BFalse -- Adicionado para > (Maior que)
step (BiggerThan (Num n) e) = BiggerThan (Num n) (step e)
step (BiggerThan e1 e2) = BiggerThan (step e1) e2
step (LessEqual (Num n1) (Num n2)) = if n1 <= n2 then BTrue else BFalse -- Adicionado para <= (Menor ou igual)
step (LessEqual (Num n) e) = LessEqual (Num n) (step e)
step (LessEqual e1 e2) = LessEqual (step e1) e2
step (BiggerEqual (Num n1) (Num n2)) = if n1 >= n2 then BTrue else BFalse -- Adicionado para >= (Maior ou igual)
step (BiggerEqual (Num n) e) = BiggerEqual (Num n) (step e)
step (BiggerEqual e1 e2) = BiggerEqual (step e1) e2
step (Not BTrue) = BFalse -- | Adicionado para Not |
step (Not BFalse) = BTrue
step (Not e) | isValue e = Not e
             | otherwise = Not (step e)
step (If BFalse e1 e2) = e2
step (If BTrue e1 e2) = e1
step (If e e1 e2) = If (step e) e1 e2
step (TernIf BTrue e1 e2) = e1 -- | Adicionado para o condicional ternário |
step (TernIf BFalse e1 e2) = e2
step (TernIf e e1 e2) = TernIf (step e) e1 e2
step (Paren e) = e
step (App (Lam x t b) e2) | isValue e2 = subst x e2 b
                        | otherwise = (App (Lam x t b) (step e2))
step (App e1 e2) = App (step e1) e2
step (Let v e1 e2) | isValue e1 = subst v e1 e2
                   | otherwise = Let v (step e1) e2
step (For start end body) = case (eval start, eval end) of
                                  (Num startVal, Num endVal) -> loop startVal
                                    where
                                      loop i | i <= endVal = let body' = subst "i" (Num i) body
                                                         in loop (i + 1)
                                             | otherwise = Num i
                                  _ -> error "Invalid for loop"

eval :: Expr -> Expr
eval e | isValue e = e 
       | otherwise = eval (step e)
