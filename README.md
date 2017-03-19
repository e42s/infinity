Infinity Language
=================

Infinity is a dependently typed language for stream processing, distributed processing and text processing. We use Coq to prototype the standard library including the theories needed to be able to prove code invariants instead of testing them. Infinity is a source to source translator that lets you use different languages at runtime: Erlang, Rust, Clang, Futhark, Julia, etc.

Infinity language presents a solid and unified way of modeling inter-language computations and inter-system communications within a single language with compact core. We strive for utilizing parallel hardware such as GPU and SSE/AVX SIMD instructions and providing a robust and verified distributed environment with process and channels runtime.

Simple Lambda Calculus
----------------------

The Simple Lambda Calculus is used to model dynamic interpreted target languages such as JavaScript, Erlang, Lua, K and other shells. A total fragment of call by value lambda calculus is used in the optimizer as a runtime model. Translation to dynamic languages requires type erasure in addition to syntactic transformations.

Hindley-Milner Type System
--------------------------

A Hindley-Milner type system is used to model static target languages such as C++ or Rust. The system models certain features of low-level languages such as unboxed types and non-first-class instantiation-based polymorphism pretty well. The completeness and modularity of type inference lets the code generator reconstruct the native types of the target language.

While Hindley-Milner systems in general and the particular set of extensions used are pretty limited compared to System F, the chosen type system still allows to model native effects and translate structural recursion and corecursion into native iteration.

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

