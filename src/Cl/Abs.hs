module Cl.Abs where

-- Haskell module generated by the BNF converter

newtype Ident = Ident String deriving (Eq,Ord,Show)
data Id =
   Qname Ident Ident
  deriving (Eq,Ord,Show)

data Exp =
   Evar Id
 | Efun Id
 | Econ Id
 | Eapp Exp Exp
  deriving (Eq,Ord,Show)

data Pat =
   Pvar Id
 | Pcon Id [Pat]
  deriving (Eq,Ord,Show)

data Guard =
   Guard [Exp]
  deriving (Eq,Ord,Show)

data Def =
   Def Pat Exp
  deriving (Eq,Ord,Show)

data Local =
   Loc [Def]
  deriving (Eq,Ord,Show)

data Clause =
   Cl Id [Pat] [Guard] Exp [Local]
  deriving (Eq,Ord,Show)

data Lit =
   Lpos Exp Exp
 | Lneg Exp Exp
 | Linline Id
 | Lninline Id
  deriving (Eq,Ord,Show)

data Pcl =
   PCl [Lit]
  deriving (Eq,Ord,Show)

data PropCl =
   Property Id [Id] [Pcl] [Pcl]
  deriving (Eq,Ord,Show)

data Module =
   Mod [Clause] [PropCl]
  deriving (Eq,Ord,Show)

