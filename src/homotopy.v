
Require Import core.

Inductive HomotopyCalculus :=
 | Id                 | Refl
 | Inh                | Inc
 | Squash             | InhRec
 | TransU             | TransInvU
 | TransURef          | Singl
 | MapOnPath          | AppOnPath
 | HExt               | EquivEq
 | EquivEqRef         | TransUEquivEq
 | IdP                | MapOnPathD
 | IdS                | MapOnPathS
 | AppOnPathD         | Circle
 | Base               | HLoop
 | CircleRec          | I
 | I0                 | I1
 | Line               | IntRec
 | Undef: Loc -> HomotopyCalculus.

(*
   prop : U -> U
   prop A = (a b : A) -> Id A a b
   Sigma : (A : U) (B : A -> U) -> U
   Sigma A B = (x : A) * B x
   fiber : (A B : U) (f : A -> B) (y : B) -> U
   fiber A B f y = Sigma A (\x -> Id B (f x) y)
   id : (A : U) -> A -> A
   id A a = a
   singl : (A : U) -> A -> U
   singl A a = Sigma A (Id A a)
   pathTo : (A:U) -> A -> U
   pathTo A = fiber A A (id A)
   sId : (A : U) (a : A) -> pathTo A a
   sId A a = (a, refl A a)
   IdS : (A : U) (F : A -> U) (a0 a1 : A) (p : Id A a0 a1) -> F a0 -> F a1 -> U
   IdS A F a0 a1 p = IdP (F a0) (F a1) (mapOnPath A U F a0 a1 p)

   Primitives

   Id : (A : U) (a b : A) -> U
   refl : (A : U) (a : A) -> Id A a a
   inh : U -> U
   inc : (A : U) -> A -> inh A
   squash : (A : U) -> prop (inh A)
   inhrec : (A : U) (B : U) (p : prop B) (f : A -> B) (a : inh A) -> B
   contrSingl : (A : U) (a b : A) (p : Id A a b) -> Id (singl A a) (a, refl A a) (b, p)

   equivEq : (A B : U) (f : A -> B) (s : (y : B) -> fiber A B f y)
             (t : (y : B) -> (v : fiber A B f y) ->
             Id (fiber A B f y) (s y) v) -> Id U A B

   transport : (A B : U) -> Id U A B -> A -> B
   transpInv : (A B : U) -> Id U A B -> B -> A

   transportRef : (A : U) (a : A) -> Id A a (transport A A (refl U A) a)

   equivEqRef : (A : U) -> (s : (y : A) -> pathTo A y) ->
                (t : (y : A) -> (v : pathTo A y) ->
                Id (pathTo A y) (s y) v) ->
                Id (Id U A A) (refl U A) (equivEq A A (id A) s t)

   transpEquivEq : (A B : U) -> (f : A -> B) (s : (y : B) -> fiber A B f y) ->
                   (t : (y : B) -> (v : fiber A B f y) -> Id (fiber A B f y) (s y) v) ->
                   (a : A) -> Id B (f a) (transport A B (equivEq A B f s t) a)

   appOnPathD :  (A : U) (F : A -> U) (f g : (x : A) -> F x) -> Id ((x : A) -> F x) f g ->
                 (a0 a1 : A) (p : Id A a0 a1) -> IdS A F a0 a1 p  (f a0) (g a1)


   mapOnPath : (A B : U) (f : A -> B) (a b : A) (p : Id A a b) -> Id B (f a) (f b)
   appOnPath : (A B : U) (f g : A -> B) (a b : A) (q : Id (A -> B) f g) (p : Id A a b) -> Id B (f a) (g b)

   IdP : (A B : U) -> Id U A B -> A -> B -> U

   mapOnPathD : (A:U) (F: A -> U) (f: (x:A) -> F x) (a0 a1: A) (p: Id A a0 a1) -> IdS A F a0 a1 p  (f a0) (f a1)
   mapOnPathS : (A:U) (F: A -> U) (C: U) (f: (x:A) -> F x -> C)
                (a0 a1 : A) (p : Id A a0 a1) (b0 : F a0) (b1 : F a1)
                (q : IdS A F a0 a1 p b0 b1) -> Id C (f a0 b0) (f a1 b1)

   funHExt : (A : U) (B : A -> U) (f g : (a : A) -> B a) ->
             ((x y : A) -> (p : Id A x y) -> IdS A B x y p (f x) (g y)) ->
             Id ((y : A) -> B y) f g

   S1 : U
   base : S1
   loop : Id S1 base base
   S1rec : (F : S1 -> U) (b : F base) (l : IdS S1 F base base loop b b) (x : S1) -> F x
   I : U
   I0 : I
   I1 : I
   line : Id I I0 I1
   intrec : (F : I -> U) (s : F I0) (e : F I1) (l : IdS I F I0 I1 line s e) (x : I) -> F x

*)
