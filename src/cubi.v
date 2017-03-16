Require    Import Strings.String.

Inductive  Loc: Type := intro: string -> nat -> nat -> Loc.
Definition Ident     := string.
Definition Label     := string.
Definition Binder    := prod Ident Loc.
Definition Branch    := prod Label (prod (list Binder) Type).
Definition NamedRec  := list (prod Binder Type).
Definition NamedSum  := list (prod Binder NamedRec).
Definition Decls     := Type.

Inductive Private :=
 | Id
 | Refl
 | Inh
 | Inc
 | Squash
 | InhRec
 | TransU
 | TransInvU
 | TransURef
 | CSingl
 | MapOnPath
 | AppOnPath
 | HExt
 | EquivEq
 | EquivEqRef
 | TransUEquivEq
 | IdP
 | MapOnPathD
 | AppOnPathD
 | Circle
 | Base
 | Loop
 | CircleRec
 | I
 | I0
 | I1
 | Line
 | IntRec
 | Undef: Loc -> Private.

Inductive Ter :=
 | App: Ter -> Ter -> Ter
 | Pi: Ter -> Ter -> Ter
 | Lam: Binder -> Ter -> Ter
 | Sigma: Ter -> Ter -> Ter
 | Pair: Ter -> Ter -> Ter
 | Fst: Ter -> Ter
 | Snd: Ter -> Ter
 | Where: Ter -> Decls -> Ter
 | Var: Ident -> Ter
 | U: Ter
 | Con: Label -> list Ter -> Ter
 | Split: Loc -> list Branch -> Ter
 | Sum: Binder -> NamedSum -> Ter
 | Builtin: Private -> Ter.
