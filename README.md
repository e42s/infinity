Infinity Language
=================

The idea of Infinity Langauge came from the needs of unification and
arranging different calculuses as an extensions to the core of the
language with dependent types (or MLTT core). While been working on
distributed systems, data storages and stream processing, the core
two languages: pi calculus and stream calculus discovered to be
connected and being driven by a language with quantifiers as a primitives.

Simple Lambda Calculus
----------------------

Simple lambda calculus was discovered by Church as computational model of functions.
This is the simplest model of lambda calculus in lambda cube, also it suffers from paradoxes.
To help escape this the simple typed lambda caclulus was invented. While being primitive
simple lambda calculus is widely used in interpreters: such as JavaScript (all modern browsers),
Erlang (Ericsson), K (Kx Systems) and other shells.

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
It is used in modeling higher inductive types and stands as a comtemporary math foundations.

Pi Calculus
-----------

Pi calculus can be transformed from lambda
calculus by replacing a variable constructor with stream constructor.
But the language and protocol accessing this stream could vary
from backend to backend with respect to design requirements.

Pi calculus is also known as a process calculus that can be used to model of distributed system
over a channel transport. Each process presented as coinductive program and is able
to be runned both in parallel and sequentially. Processes are communicating by inductive protocols
known as session types over physical channels that can be corecursive streams (linear types),
random access arrays (static lifetime) or other effectful disciplines. Process calculus
is used to model distributed systems such as Erlang or application based protocols.

The process calculus itself should be backed with number of infinity streams,
represented as processor cores. The parallel system of reactive shcedulers
that cycle the list of AST trees filled with calculus instructions.

Stream Calculus
---------------

Thus, stream calculus should provide different disciplines for accessing
underlying streams used in Pi calculus. For example: 1) linear types, or streams with
constant direction without rollbacks where each element of stream is touched once;
2) random access arrays; 3) GPU sources; 4) runtime typed channels;
5) effect and coeffect streams (processes as streams). Such stream
calculuses could be landed with such GPU languages as Futhark
or AVX intrinsics languages, such as Julia. We could treat
stream calculus as memory representation with different protocol accesses.

One type of disciplines is a stream calculus. While pi calculus could be imagined as
lambda calculus where function arguments are channels or streams, stream calculus defines set
of constructions over these streams. This calculus is needed to provide different forms
of vectorization that can be used on GPU and AVX hardware.

Effect Calculus
---------------

The other type of discipline is effect calculus of streams and programs. It covers internal
process states, `try` `raise` `catch` constructions, `random` and other infinity streams.
Also this subtree contains I/O and low level operations that are linked with runtime.
