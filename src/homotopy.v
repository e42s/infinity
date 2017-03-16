
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
   Homotopy Calculus

   Inh : Inh A is an h-prop stating that A is inhabited. Here we take h-prop A as (Pi x y : A) Id A x y.
   Inc : Inc a : Inh A for a: A
   Squash : Squash a b : Id (Inh A) a b
   InhRec : InhRec B p phi a : B, p : hprop(B), phi : A -> B, a : Inh A (cf. HoTT-book p.113)
   TramsU : (A B : U) -> Id U A B -> A -> B
           For TransU we only need the eqproof and the element in A is needed
   TransURef: (A : U) -> (a : A) -> Id A a (transport A (refl U A) a)
   Singl: (A : U) (a b:A) (p:Id A a b) -> Id (singl A a) (pair a (refl A a)) (pair b p)
   MapOnPath: (A B : U) (f : A -> B) (a b : A) -> (p : Id A a b) -> Id B (f a) (f b)
   AppOnPath: (A B : U) (f g : A -> B) (a b : A) -> Id (A->B) f g -> Id A a b -> Id B (f a) (g b)
   Ext:  Ext B f g p : Id (Pi A B) f g, (p : (Pi x:A) Id (Bx) (fx,gx))
   HExt: Ext B f g p : Id (Pi A B) f g, (p : (Pi x y:A) IdS A (Bx) x y p fx gy)
   EquivEq: EquivEq A B f s t where A, B are types, f : A -> B,
            s : (y : B) -> fiber f y, and
            t : (y : B) (z : fiber f y) -> Id (fiber f y) (s y) z
            where fiber f y is Sigma x : A. Id B (f x) z.
   EquivEqRef : (A : U) -> (s : (y : A) -> pathTo A a) ->
               (t : (y : B) -> (v : pathTo A a) -> Id (path To A a) (s y) v) ->
               Id (Id U A A) (refl U A) (equivEq A A (id A) s t)
   TransUEquivEq: (A B : U) -> (f : A -> B) (s : (y : B) -> fiber A B f y) ->
                  (t : (y : B) -> (v : fiber A B f y) -> Id (fiber A B f y) (s y) v) ->
                  (a : A) -> Id B (f a) (transport A B (equivEq A B f s t) a)
   IdP : (A B : U) -> Id U A B -> A -> B -> U
                IdP A B p a b -- is the type of paths  connecting a to b over p
   IdS : (A:U) (F:A -> U) (a0 a1:A) (p:Id A a0 a1) -> F a0 -> F a1 -> U
               IdS A F a0 a1 p = IdP (F a0) (F a1) (MapOnPath A U F a0 a1 p)
   AppOnPathD :  (A : U) (F : A -> U) (f g : (x : A) -> F x) -> Id ((x : A) -> F x) f g ->
                 (a0 a1 : A) (p : Id A a0 a1) -> IdS A F a0 a1 p  (f a0) (g a1)
   MapOnPathD :  (A : U) (F : A -> U) (f : (x : A) -> F x) (a0 a1 : A) (p : Id A a0 a1) ->
               IdS A F a0 a1 p  (f a0) (f a1)
   MapOnPathS : (A:U) (F:A -> U) (C:U) (f: (x:A) -> F x -> C) (a0 a1 : A) (p:Id A a0 a1)
                (b0:F a0) (b1:F a1) (q : IdS A F a0 a1 p b0 b1) -> Id C (f a0 b0) (f a1 b1)
   CircleRec: (F : S1 -> U) (b : F base) (l : IdS F base base loop) (x : S1) -> F x
   I0,I1: Int
   Circle: U
   I : U
   IntRec: : (F : I -> U) (s : F I0) (e : F I1) (l : IdS Int F I0 I1 line s e) (x : I) -> F x
   Base : Circle
   Line : Id Int I0 I1
*)
