module Lexer where

import Data.Char

data Expr = BTrue
          | BFalse
          | Num Int
          | Add Expr Expr
          | Sub Expr Expr -- Adicionado para Subtração
          | Mul Expr Expr -- Adicionado para Multiplicação
          | Mod Expr Expr -- | Adicionado para Módulo |
          | And Expr Expr
          | Or Expr Expr -- Adicionado para Or
          | Xor Expr Expr -- Adicionado para Xor
          | Equal Expr Expr -- Adicionado para == (Igual)
          | NotEqual Expr Expr -- | Adicionado para != (Diferente) |
          | LessThan Expr Expr -- Adicionado para < (Menor Que)
          | BiggerThan Expr Expr -- Adicionado para > (Maior Que)
          | LessEqual Expr Expr -- Adicionado para <= (Menor ou Igual)
          | BiggerEqual Expr Expr -- Adicionado para >= (Maior ou Igual)
          | Not Expr -- | Adicionado para Not |
          | If Expr Expr Expr
          | TernIf Expr Expr Expr -- | Adicionado para o condicional ternário |
          | Var String
          | Lam String Ty Expr
          | App Expr Expr
          | Paren Expr
          | Let String Expr Expr
          | For Expr Expr Expr
          deriving Show

data Ty = TBool
        | TNum
        | TFun Ty Ty
        deriving (Show, Eq)

data Token = TokenTrue
           | TokenFalse
           | TokenNum Int
           | TokenAdd
           | TokenSub -- Adicionado para Subtração
           | TokenMul -- Adicionado para Multiplicação
           | TokenMod -- | Adicionado para Módulo |
           | TokenAnd
           | TokenOr -- Adicionado para Or
           | TokenXor -- Adicionado para Xor
           | TokenEqual -- Adicionado para == (Igual)
           | TokenNotEqual -- | Adicionado para != (Diferente) |
           | TokenLessThan -- Adicionado para < (Menor Que)
           | TokenBiggerThan -- Adicionado para > (Maior Que)
           | TokenLessEqual -- Adicionado para <= (Menor ou Igual)
           | TokenBiggerEqual -- Adicionado para >= (Maior ou Igual)
           | TokenNot -- | Adicionado para Not |
           | TokenIf
           | TokenTernIf -- | Adicionado para o condicional ternário |
           | TokenThen
           | TokenElse
           | TokenVar String
           | TokenLam
           | TokenArrow
           | TokenLParen
           | TokenRParen
           | TokenLet
           | TokenEq
           | TokenIn
           | TokenColon
           | TokenBoolean
           | TokenNumber
           | TokenFor
           | TokenTo
           | TokenDo
           deriving (Show, Eq)

isSymb :: Char -> Bool
isSymb c = c `elem` "+&\\->()=:*|<!%?" -- Adicionados símbolos necessários

lexer :: String -> [Token]
lexer [] = []
lexer ('/':'/':cs) = lexer (dropWhile (/= '\n') cs) -- | Comentário de linha única, ignora até o final da linha |
lexer ('/':'*':cs) = lexComment cs -- | Comentário de múltiplas linhas |
lexer ('(':cs) = TokenLParen : lexer cs
lexer (')':cs) = TokenRParen : lexer cs
lexer (c:cs) | isSpace c = lexer cs
             | isDigit c = lexNum (c:cs)
             | isSymb c = lexSymbol (c:cs)
             | isAlpha c = lexKW (c:cs)
lexer _ = error "Lexical error!"

lexComment :: String -> [Token] -- | Criado nova função para tratar comentários |
lexComment ('*':'/':cs) = lexer cs -- | Caso base, fim do comentário, retorna ao lexer normal |
lexComment (_:cs) = lexComment cs -- | Continua ignorando os caracteres dentro do comentário |
lexComment [] = error "Unclosed comment!" -- | Se chegar no final e não tiver fechado o comentário, retorna erro |

lexNum :: String -> [Token]
lexNum cs = case span isDigit cs of
              (num, rest) -> TokenNum (read num) : lexer rest

lexSymbol :: String -> [Token]
lexSymbol cs = case span isSymb cs of
                 ("+", rest) -> TokenAdd : lexer rest
                 ("-", rest) -> TokenSub : lexer rest -- Adicionado para Subtração
                 ("*", rest) -> TokenMul : lexer rest -- Adicionado para Multiplicação
                 ("%", rest) -> TokenMod : lexer rest -- | Adicionado para Módulo |
                 ("&&", rest) -> TokenAnd : lexer rest
                 ("||", rest) -> TokenOr : lexer rest -- Adicionado para Or
                 ("|+|", rest) -> TokenXor : lexer rest -- Adicionado para Xor
                 ("==", rest) -> TokenEqual : lexer rest -- Adicionado para == (Igual)
                 ("!=", rest) -> TokenNotEqual : lexer rest -- | Adicionado para != (Diferente) |
                 ("<", rest) -> TokenLessThan : lexer rest -- Adicionado para < (Menor Que)
                 (">", rest) -> TokenBiggerThan : lexer rest -- Adicionado para > (Maior Que)
                 ("<=", rest) -> TokenLessEqual : lexer rest -- Adicionado para <= (Menor ou Igual)
                 (">=", rest) -> TokenBiggerEqual : lexer rest -- Adicionado para >= (Maior ou Igual)
                 ("!", rest) -> TokenNot : lexer rest -- | Adicionado para Not |
                 ("?", rest) -> TokenTernIf : lexer rest -- | Adicionado para o condicional ternário |
                 ("\\", rest) -> TokenLam : lexer rest
                 ("->", rest) -> TokenArrow : lexer rest
                 ("=", rest) -> TokenEq : lexer rest
                 (":", rest) -> TokenColon : lexer rest
                 _ -> error "Lexical error: invalid symbol!"

lexKW :: String -> [Token]
lexKW cs = case span isAlpha cs of
             ("true", rest) -> TokenTrue : lexer rest
             ("false", rest) -> TokenFalse : lexer rest
             ("if", rest) -> TokenIf : lexer rest
             ("then", rest) -> TokenThen : lexer rest
             ("else", rest) -> TokenElse : lexer rest
             ("let", rest) -> TokenLet : lexer rest
             ("in", rest) -> TokenIn : lexer rest
             ("Num", rest) -> TokenNumber : lexer rest
             ("Bool", rest) -> TokenBoolean : lexer rest
             ("for", rest) -> TokenFor : lexer rest
             ("to", rest) -> TokenTo : lexer rest
             ("do", rest) -> TokenDo : lexer rest
             (var, rest) -> TokenVar var : lexer rest