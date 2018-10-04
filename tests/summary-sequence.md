# Summary Sheet

## Terms

* A sequence is anything which can be counted. Sequences can either be finite or
  infinite.

* A series is the sum of a sequence. In general we can safely sum up finite
  sequences, but we can't always safely sum up infinite sequences, such as:

  $(-1) + 1 + (-1) + 1 + (-1) + ...$

   Which we have previously shown to be paradoxically equal to $0, 1,$ and 
   $\frac{1}{2}$. If we had to speak very accurately, we can say that some
   infinite sequences don't have a sum.

### Linear Sequence

* A linear sequence is a sequence in which the additive difference from one term
  to the next always stays the same. Another way of saying this is that the
  velocity never changes.

  Any linear sequence can be described by a function $f$ with just two pieces of
  information: a (1) velocity $a$ (2) and a starting position $b$. 

  $f(n) = an + b$ where $n ∈ ℕ$.

### Linear Series

* A linear series is the sum of a linear sequence. The sum of any finite linear
  sequence $S$ can be found with the formula:

  $sum(S) = (S_0 + S_F) * n * \dfrac{1}{2}$

  $sum(S) = \dfrac{(S_0 + S_F)n}{2}$

### Geometric Sequence

 * A geometric sequence is a sequence in which the ratio from one term to the
   next never changes. Any geometric sequence can be defined by a function 
   $f(n)$ given a starting number $a$ and a common ratio $r$:

   $f(n) = a * r^n$

### Geometric Series

* The sum $S$ of any finite geometric sequence can be found given: (1) a 
  starting number $a$, (2) a common ratio $r$, and (3) the $n$-th term counting 
  from $0$.

  $S = \dfrac{a(1 - r^{n + 1})}{1 - r}$

  The formula can be justified by:

  $S = ar^0 + ar^1 + ar^2 + ... + ar^n$

  $S * r = ar^1 + ar^2 + ar^3 + ... + ar^{n + 1}$

  $S - (S * r) = ar^0 + ar^{n + 1}$

  $S(1 - r) = a(1 - r^{n + 1})$

  $S = \dfrac{a(1 - r^{n + 1})}{1 - r}$

* The sum $S$ of any infinite geometric sequence can be found given: (1) a 
  starting number $a$ and (2) a common ratio $r$.

  $S = ar^0 + ar^1 + ar^2 + ...$

  $S * r = ar^1 + ar^2 + ar^3 + ...$

  $S - (S * r) = ar^0$

  $S(1 - r) = a$

  $S = \dfrac{a}{1 - r}$

  The sum of an infinite geometric sequence is strangely simpler because we 
  don't have to deal with the "last" term of an infinite sequence.