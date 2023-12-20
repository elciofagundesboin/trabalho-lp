module TypeChecker where 

import Lexer 
import Parser
import Interpreter

type Ctx = [(String, Ty)]

typeof :: Ctx -> Expr -> Maybe Ty
typeof ctx BTrue = Just TBool
typeof ctx  BFalse = Just TBool
typeof ctx (Num _) = Just TNum
typeof ctx (Add e1 e2) = case (typeof ctx e1, typeof ctx e2) of
                       (Just TNum, Just TNum) -> Just TNum
                       _                      -> Nothing
typeof ctx (Sub e1 e2) = case (typeof ctx e1, typeof ctx e2) of -- Adicionado para Subtração
                       (Just TNum, Just TNum) -> Just TNum
                       _                      -> Nothing
typeof ctx (Mul e1 e2) = case (typeof ctx e1, typeof ctx e2) of -- Adicionado para Multiplicação
                       (Just TNum, Just TNum) -> Just TNum
                       _                      -> Nothing
typeof ctx (Mod e1 e2) = case (typeof ctx e1, typeof ctx e2) of -- | Adicionado para Módulo |
                       (Just TNum, Just TNum) -> Just TNum
                       _                      -> Nothing
typeof ctx (And e1 e2) = case (typeof ctx e1, typeof ctx e2) of
                       (Just TBool, Just TBool) -> Just TBool
                       _                        -> Nothing
typeof ctx (Or e1 e2) = case (typeof ctx e1, typeof ctx e2) of -- Adicionado para Or
                       (Just TBool, Just TBool) -> Just TBool
                       _                        -> Nothing
typeof ctx (Xor e1 e2) = case (typeof ctx e1, typeof ctx e2) of -- Adicionado para Xor
                       (Just TBool, Just TBool) -> Just TBool
                       _                        -> Nothing
typeof ctx (Equal e1 e2) = case (typeof ctx e1, typeof ctx e2) of -- Adicionado para == (Igual)
                       (Just t1, Just t2) -> if t1 == t2 then Just TBool else Nothing
                       _                  -> Nothing
typeof ctx (NotEqual e1 e2) = case (typeof ctx e1, typeof ctx e2) of -- | Adicionado para != (Diferente) |
                       (Just t1, Just t2) -> if t1 == t2 then Just TBool else Nothing
                       _                  -> Nothing
typeof ctx (LessThan e1 e2) = case (typeof ctx e1, typeof ctx e2) of -- Adicionado para < (Menor Que)
                       (Just TNum, Just TNum) -> Just TBool
                       _                      -> Nothing
typeof ctx (BiggerThan e1 e2) = case (typeof ctx e1, typeof ctx e2) of -- Adicionado para > (Maior Que)
                       (Just TNum, Just TNum) -> Just TBool
                       _                      -> Nothing
typeof ctx (LessEqual e1 e2) = case (typeof ctx e1, typeof ctx e2) of -- Adicionado para <= (Menor ou Igual)
                       (Just TNum, Just TNum) -> Just TBool
                       _                      -> Nothing
typeof ctx (BiggerEqual e1 e2) = case (typeof ctx e1, typeof ctx e2) of -- Adicionado para >= (Maior ou Igual)
                       (Just TNum, Just TNum) -> Just TBool
                       _                      -> Nothing
typeof ctx (Not e1) = case typeof ctx e1 of -- Adicionado para Not
                       (Just TBool) -> Just TBool
                       _            -> Nothing
typeof ctx (If e1 e2 e3) = case typeof ctx e1 of
                         Just TBool -> case (typeof ctx e2, typeof ctx e3) of
                                         (Just t1, Just t2)       -> if (t1 == t2) then
                                                                       Just t1
                                                                     else
                                                                       Nothing
                                         _                        -> Nothing
                         _          -> Nothing
typeof ctx (TernIf e1 e2 e3) = case (typeof ctx e1, typeof ctx e2, typeof ctx e3) of -- | Adicionado para o condicional ternário |
                              (Just TBool, Just t1, Just t2) -> if t1 == t2 then
                                                                    Just t1
                                                                else Nothing
                              _                              -> Nothing
typeof ctx (Paren e) = typeof ctx e
typeof ctx (Var x) = lookup x ctx
typeof ctx (Lam v t1 b) = let ctx' = (v, t1):ctx
                            in case typeof ctx' b of
                              Just t2 -> Just (TFun t1 t2)
                              _       -> Nothing
typeof ctx (App e1 e2) = case (typeof ctx e1, typeof ctx e2) of
                            (Just (TFun t11 t12), Just t2) -> if (t11 == t2) then
                                                                Just t12
                                                              else
                                                                Nothing
                            _                              -> Nothing
typeof ctx (Let v e1 e2) = case typeof ctx e1 of
                                (Just t1) -> typeof ((v, t1):ctx) e2
                                _         -> Nothing
typeof ctx (For e1 e2 e3) = case (typeof ctx e1, typeof ctx e2, typeof ctx e3) of
                                   (Just TNum, Just TNum, Just _) -> Just TNum
                                   _                             -> Nothing

typecheck :: Expr -> Expr
typecheck e = case typeof [] e of
                Just _ -> e
                _      -> error "Type error!"