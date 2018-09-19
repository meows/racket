$\newcommand\doubleplus{+\kern-1.3ex+\kern0.8ex}$
$\newcommand\mdoubleplus{\ensuremath{\mathbin{+\mkern-10mu+}}}$

# Naturals (ℕ)

There is a natural group $(ℕ, 0, S)$.

1. $0 ∈ ℕ$
2. $S(n) ∈ ℕ$
3. $S(n) ≠ 0$
4. $S(a) = S(b)$ *iff* $a = b$
5. Let $P$ be a boolean function on the naturals. If $P(0)$ and $P(S(n))$, then 
   $P(n)$.

   Another restatement of this is: Let $ℕ$ be the smallest set which obeys all
   the above 4 rules. Both of these seemingly different restatements of the same
   rule serve to exclude anything extra from what we've defined for our set. 
   They also make sure that an inductive proof can cover the entire set.

## Addition

  * $0 + m := m$
  * $S(n) + m := (n + m)$

## Multiplication

  * $0 * m := 0$
  * $S(n) * m := (n * m) + m$

## Exponentiation

  * $m^0 := 1$
  * $m^{S(n)} := m^n * m$

## Positivity

1. Definition: a natural number is said to be positive if it's not $0$. 
2. Lemma: _Addition involving any positive number results in another positive 
   number_. One way to establish this claim is to show that any non-zero natural
   can be represented in the form $S(n)$.
3. Lemma: Every positive natural has a unique predecessor.

--------------------------------------------------------------------------------

# Integers (ℤ)

There is an integer commutative ring $(ℤ, +, *)$. An integer can be constructed 
as pairs of naturals of the form $ℤ(a, b)$ where $\{a, b\} ∈ ℕ$. This encoding of
the integers relies on two distinct natural dimensions, and the degree to which
one of these dimensions exceeds the other.

## Equality

Equality of the integers is defined by equality of the naturals.

  * $ℤ(a, b) = ℤ(c, d)$ _iff_ $a + d = b + c$

## Addition

Addition can be thought of as an operation that combines same-with-same 
dimensions.

  * $ℤ(a, b) + ℤ(c, d) = ℤ(a + c, b + d)$

## Additive Inverse

This is a notable extension over the naturals because now $+$ becomes an 
invertible function.

  * $-ℤ(a, b) = ℤ(b, a)$
  * $ℤ(a, b) - ℤ(c, d) = ℤ(a, b) + -ℤ(c, d)$

## Multiplication

$ℤ * ℤ$ can be interpreted as $Z([a b] · [c d], [a b] × [c d])$.

  * $ℤ(a, b) * ℤ(c, d) = ℤ(ac + bd, ad + bc)$

--------------------------------------------------------------------------------

# Rationals (ℚ)

There is a rational field $(ℚ, +, *)$. A rational can be constructed as pairs of 
integers of the form $ℚ(a, b)$ where $\{ a, b \} ∈ ℤ$ and $b ≠ 0$.

## Equality

  * $ℚ(a, b) = ℚ(c, d)$ _iff_ $ad = bc$

## Addition

Addition between ℚ-tuples can be viewed as: [a b] + [c d] = ([a b] × [c d], bd).

  * $ℚ(a, b) + ℚ(c, d) = ℚ(ad + bc, bd)$

## Additive Inverse

  * $-ℚ(a, b) = ℚ(-a, b)$

## Multiplication

  * $ℚ(a, b) * ℚ(c, d) = ℚ(ac, bd)$

## Multiplicative Inverse

  * $ℚ(a, b)^{-1} = ℚ(b, a)$

## Division

Division of two rationals can be described as a different-with-different
dimension operation.

  * $ℚ(a, b) / ℚ(c, d) = ℚ(a, b) * ℚ(c, d)^{-1}$
  * $ℚ(a, b) / ℚ(c, d) = ℚ(ad, bc)$

### Division by 1

These behave exactly like the integers, and thus we can define a mapping between
a subset of the rationals and the integers.

  * $ℚ(a, 1) + ℚ(b, 1) = ℚ(a + b, 1)$
  * $ℚ(a, 1) * ℚ(b, 1) = ℚ(a * b, 1)$
  * $-ℚ(a, 1) = ℚ(-a, 1)$

 Rational   | Integer
 ---------- | -------
 $ℚ(-2, 1)$ | $-2$
 $ℚ(-1, 1)$ | $-1$
 $ℚ(0, 1)$  | $0$
 $ℚ(1, 1)$  | $1$
 $ℚ(2, 1)$  | $2$

### Division by 0

The domain limitation on $ℚ(a, b)$ where $b ≠ 0$ is implied by the two 
statements below:

  * $c * 0 = 0$
  * $ℚ(a, b) * ℚ(b, 1) = ℚ(ab, b)$

We can see that $ℚ(ab, b) = ℚ(a, 1)$ because $ab = ba$. What this means is if
$b = 0$ then the result will always be $0$.

## Exponentiation

  * $ℚ(a, b)^n = ℚ(a^n, b^n)$
  * $ℚ(a, b)^{-n} = ℚ(1, ℚ(a, b)^n)$

### Identities

  * $ℚ(a, b)^x * ℚ(a, b)^y = ℚ(a, b)^{x + y}$
  * $(ℚ(a, b)^x)^y = ℚ(a, b)^{xy}$
  * $ℚ(a, b)^x * ℚ(c, d)^x = ℚ(ac, bd)^x$

## Alternative Notation

  * $a―b = c―d$ _iff_ $a + d = b + c$
  * $a―b + c―d = (a + c)―(b + d)$
  * $-(a―b) = b―a$
  * $a―b - c―d = a―b + -(c―d)$
  * $a―b * c―d = (ac + bd)―(ad + bc)$

  * $a//b = c//d$ _iff_ $ad//bc$
  * $a//b + c//d = (ad + bc)//bc$
  * $(a//b) * (c//d) = ac//bd$
  * $-(a//b) = (-a//b)$
  * $(a//b)^n = a^n // b^n$

## Commentary on Approach

Speaking informally, we might say that additive inverses are what make integers
more powerful over naturals. We might also say that multiplicative inverses are
what make the rationals more powerful over the integers.

Furthermore, $ℤ + ℤ$ and $ℚ * ℚ$ are similar because they are both 
same-with-same dimension operations:

  * $ℤ(a, b) + ℤ(c, d) = ℤ(a + c, b + d)$
  * $ℚ(a, b) * ℚ(c, d) = ℚ(a * c, b * d)$

$ℤ * ℤ$ and $ℚ + ℚ$ are also similar because they are both 
different-with-different dimension operations resembling distribution.

  * $(a + b) * (c + d) = (ac + ad + bc + bd)$

  * $ℤ(a, b) * ℤ(c, d) = ℤ(ac + bd, ad + bc)$
  * $ℚ(a, b) + ℚ(c, d) = ℚ(ad + bc, bd)$

