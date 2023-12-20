{
module Parser where

import Lexer
}

%name parser
%tokentype { Token }
%error { parserError }

%token 
    num         { TokenNum $$ }
    
    '+'         { TokenAdd }
    '-'         { TokenSub } -- Adicionado para Subtração
    '*'         { TokenMul } -- Adicionado para Multiplicação
    '%'         { TokenMod } -- | Adicionado para Módulo |
    "&&"        { TokenAnd }
    "||"        { TokenOr } -- Adicionado para Or
    "|+|"       { TokenXor } -- Adicionado para Xor
    "=="        { TokenEqual } -- Adicionado para == (Igual)
    "!="        { TokenNotEqual } -- | Adicionado para != (Diferente) |
    '<'         { TokenLessThan } -- Adicionado para < (Menor Que)
    '>'         { TokenBiggerThan } -- Adicionado para > (Maior Que)
    "<="        { TokenLessEqual } -- Adicionado para <= (Menor ou Igual)
    ">="        { TokenBiggerEqual } -- Adicionado para >= (Maior ou Igual)
    '!'         { TokenNot } -- | Adicionado para Not |
    '?'         { TokenTernIf } -- | Adicionado para o condicional ternário |
    true        { TokenTrue }
    false       { TokenFalse }
    if          { TokenIf }
    then        { TokenThen }
    else        { TokenElse }
    var         { TokenVar $$ }
    '\\'        { TokenLam }
    "->"        { TokenArrow }
    '('         { TokenLParen }
    ')'         { TokenRParen }
    '='         { TokenEq }
    let         { TokenLet }
    in          { TokenIn }
    Bool        { TokenBoolean }
    Num         { TokenNumber }
    ':'         { TokenColon }
    for         { TokenFor }
    to          { TokenTo }
    do          { TokenDo }

%%

Exp         : num                        { Num $1 }
            | true                       { BTrue }
            | false                      { BFalse }
            | Exp '+' Exp                { Add $1 $3 }
            | Exp '-' Exp                { Sub $1 $3 } -- Adicionado para Subtração
            | Exp '*' Exp                { Mul $1 $3 } -- Adicionado para Multiplicação
            | Exp '%' Exp                { Mod $1 $3 } -- | Adicionado para Módulo |
            | Exp "&&" Exp               { And $1 $3 }
            | Exp "||" Exp               { Or $1 $3 } -- Adicionado para Or
            | Exp "|+|" Exp              { Xor $1 $3 } -- Adicionado para Xor
            | Exp "==" Exp               { Equal $1 $3 } -- Adicionado para == (Igual)
            | Exp "!=" Exp               { NotEqual $1 $3 } -- | Adicionado para != (Igual) |
            | Exp '<' Exp                { LessThan $1 $3 } -- Adicionado para < (Menor Que)
            | Exp '>' Exp                { BiggerThan $1 $3 } -- Adicionado para > (Maior Que)
            | Exp "<=" Exp               { LessEqual $1 $3 } -- Adicionado para <= (Menor ou Igual)
            | Exp ">=" Exp               { BiggerEqual $1 $3 } -- Adicionado para >= (Maior ou Igual)
            | '!' Exp                    { Not $2 } -- | Adicionado para Not |
            | if Exp then Exp else Exp   { If $2 $4 $6 }
            | Exp '?' Exp ':' Exp        { TernIf $1 $3 $5 }
            | var                        { Var $1 }
            | '\\' var ':' Type "->" Exp { Lam $2 $4 $6 }
            | Exp Exp                    { App $1 $2 }
            | '(' Exp ')'                { Paren $2 }
            | let var '=' Exp in Exp     { Let $2 $4 $6 }
            | for Exp to Exp do Exp      { For $2 $4 $6 }

Type    : Bool                      { TBool }
        | Num                       { TNum }
        | '(' Type "->" Type ')'    { TFun $2 $4 }
{

parserError :: [Token] -> a 
parserError _ = error "Syntax error!"

}
