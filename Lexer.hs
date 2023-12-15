module Lexer where 

import Data.Char 

data Expr = BTrue
          | BFalse 
          | Num Int 
          | Add Expr Expr 
          | Sub Expr Expr
          | Mult Expr Expr
          | And Expr Expr 
          | Or Expr Expr
          | Equals Expr Expr
          | Greater Expr Expr
          | Smaller Expr Expr
          | NotEq   Expr Expr
          | GreaterEq Expr Expr
          | SmallerEq Expr Expr
          | If Expr Expr Expr 
          | Var String
          | Lam String Ty Expr 
          | App Expr Expr
          | Paren Expr
          | Let String Expr Expr 
          | Where Expr String Expr
          deriving (Show, Eq)

data Ty = TBool 
        | TNum 
        | TFun Ty Ty
        deriving (Show, Eq)

data Token = TokenTrue 
           | TokenFalse 
           | TokenNum Int 
           | TokenAdd
           | TokenSub
           | TokenMult
           | TokenAnd 
           | TokenOr 
           | TokenEquals
           | TokenGreater  
           | TokenSmaller
           | TokenNotEq
           | TokenGreaterEq
           | TokenSmallerEq        
           | TokenIf 
           | TokenThen 
           | TokenElse
           | TokenVar String 
           | TokenLam
           | TokenArrow
           | TokenLParen
           | TokenRParen
           | TokenLet 
           | TokenWhere
           | TokenEq 
           | TokenIn
           | TokenColon
           | TokenBoolean 
           | TokenNumber
           deriving (Show, Eq)

isSymb :: Char -> Bool 
isSymb c = c `elem` "+&\\->()=:-*|!<"

lexer :: String -> [Token]
lexer [] = [] 
lexer ('(':cs) = TokenLParen : lexer cs
lexer (')':cs) = TokenRParen : lexer cs
lexer (c:cs) | isSpace c = lexer cs 
             | isDigit c = lexNum (c:cs)
             | isSymb c = lexSymbol (c:cs)
             | isAlpha c = lexKW (c:cs)
lexer _ = error "Lexical error!"

lexNum :: String -> [Token]
lexNum cs = case span isDigit cs of 
              (num, rest) -> TokenNum (read num) : lexer rest

lexSymbol :: String -> [Token]
lexSymbol cs = case span isSymb cs of 
                 ("+", rest)  -> TokenAdd : lexer rest 
                 ("-", rest) -> TokenSub : lexer rest
                 ("*", rest) -> TokenMult : lexer rest
                 ("&&", rest) -> TokenAnd : lexer rest
                 ("||", rest) -> TokenOr : lexer rest
                 ("==", rest) -> TokenEquals : lexer rest
                 ("!=", rest)  -> TokenNotEq : lexer rest
                 ("<", rest)  -> TokenSmaller : lexer rest
                 (">", rest)  -> TokenGreater : lexer rest
                 ("<=", rest)  -> TokenSmallerEq : lexer rest
                 (">=", rest)  -> TokenGreaterEq : lexer rest
                 ("\\", rest) -> TokenLam : lexer rest 
                 ("->", rest) -> TokenArrow : lexer rest 
                 ("=", rest)  -> TokenEq : lexer rest 
                 (":", rest)  -> TokenColon : lexer rest 
                 _ -> error "Lexical error: invalid symbol!"

lexKW :: String -> [Token]
lexKW cs = case span isAlpha cs of 
             ("true", rest) -> TokenTrue : lexer rest 
             ("false", rest) -> TokenFalse : lexer rest
             ("if", rest) -> TokenIf : lexer rest 
             ("then", rest) -> TokenThen : lexer rest 
             ("else", rest) -> TokenElse : lexer rest 
             ("let", rest) -> TokenLet : lexer rest 
             ("where", rest) -> TokenWhere : lexer rest
             ("in", rest) -> TokenIn : lexer rest 
             ("Num", rest) -> TokenNumber : lexer rest 
             ("Bool", rest) -> TokenBoolean : lexer rest 
             (var, rest) -> TokenVar var : lexer rest 


