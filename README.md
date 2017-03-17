Infinity Language
=================

Infinity language represents fusion of models that is widely used in stream processing, distributed processing and language processing. This is to present solid and unified way of modeling inter-language computations and inter-system communications under the single core langauge with fixed set of extensions. We use Coq to blueprint the language, however different parts of the system could be built using different backend languages: such as Erlang, Rust, Clang, Futhark, Julia, etc. This thing should cover both GPU and AVX processing and provide robust and verified distributed environment with process and channels runtime.

Simple Lambda Calculus
----------------------

Simple lambda calculus was discovered by Church as computational model of functions.
This is the simplest model of lambda calculus in lambda cube, also it suffers from paradoxes.
To help escape this the simple typed lambda caclulus was invented. While being primitive
simple lambda calculus is widely used in interpreters: such as JavaScript, Erlang, Lua, K and other shells.

Hindley-Milner Type System
--------------------------

Hindley-Milner type system introduced type arrows or type quantifiers.
It allows type inference and could encode recursion and corecursion.
This is widely used in production and known as System F.

MLTT
----

With using dependent fibrations and Pi, Sigma types Martin-Lof introduced MLTT.
Which is known to be sound and consistent with only one impredicative contractable
bottom space and predicative hierarchy of infinity spaces. It can be used both as
operational calculus and logical framework. It is the core of top level AST while
other langauages are represented as leafs of this core.

Homotopy
--------

Homotopy calculus is an extension of MLTT with path types, intervals and circles.
It is used in modeling contemporary math foundations.

Pi Calculus
-----------

Pi calculus is also known as a process calculus that can be used to model of distributed system
over a channel transport. Each process presented as coinductive program and is able
to be runned both in parallel and sequentially. Processes are communicating by inductive protocols
known as session types over physical channels that can be corecursive streams (linear types),
random access arrays (static lifetime) or other effectful disciplines. Process calculus
is used to model distributed systems such as Erlang or application based protocols.

Stream Calculus
---------------

One type of disciplines is a stream calculus. While pi calculus could be imagined as
lambda calculus where function arguments are channels or streams, stream calculus defines set
of constructions over these streams. This calculus is needed to provide different forms
of vectorization that can be used on GPU and AVX hardware.

Effect Calculus
---------------

The other type of discipline is effect calculus of streams and programs. It covers internal
process states and `try` `raise` `catch` constructions. Also this subtree contains I/O and
low level operations that are linked with runtime.

