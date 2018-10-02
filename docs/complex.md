# Naturals (ℕ)

There is a natural group $(ℕ, 0, S)$.

1. $0 ∈ ℕ$
2. $S(n) ∈ ℕ$
3. $S(n) ≠ 0$
4. $S(a) = S(b)$ *iff* $a = b$
5. Let $P$ be a boolean function on the naturals. If $P(0)$ and $P(S(n))$, then 
   $P(n)$. Another restatement of this is: Let $ℕ$ be the smallest set which 
   obeys all the above 4 rules.

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
as pairs of naturals of the form $Z(a, b)$ where $\{a, b\} ∈ ℕ$.

## Equality

Equality of the integers is defined by equality of the naturals in a 
comparison of different-with-different combinations.

  * $Z(a, b) := Z(c, d)$ _iff_ $a + d = b + c$

## Addition

Addition can be thought of as an operation that combines same-with-same 
dimensions.

  * $Z(a, b) + Z(c, d) := Z(a + c, b + d)$

## Additive Inverse

This is a notable extension over the naturals because now $+$ becomes an 
invertible function.

  * $-Z(a, b) := Z(b, a)$
  * $Z(a, b) - Z(c, d) := Z(a, b) + -Z(c, d)$

## Multiplication

$Z_A * Z_B$ can be interpreted as $Z(Z_A · Z_B, Z_A × Z_B)$.

  * $Z(a, b) * Z(c, d) := Z(a c + b d, a d + b c)$

--------------------------------------------------------------------------------

# Rationals (ℚ)

There is a rational field $(ℚ, +, *)$. A rational can be constructed as pairs of 
integers of the form $Q(a, b)$ where $\{ a, b \} ∈ ℤ$ and $b ≠ 0$.

## Equality

  * $Q(a, b) = Q(c, d)$ _iff_ $ad = bc$

## Addition

Addition between ℚ-tuples can be viewed as: [a b] + [c d] = ([a b] × [c d], bd).

  * $Q(a, b) + Q(c, d) = Q(ad + bc, bd)$

## Additive Inverse

  * $-Q(a, b) = Q(-a, b)$

## Multiplication

  * $Q(a, b) * Q(c, d) = Q(ac, bd)$

## Multiplicative Inverse

  * $Q(a, b)^{-1} = Q(b, a)$

## Division

Division of two rationals can be described as a different-with-different
dimension operation.

  * $Q(a, b) / Q(c, d) = Q(a, b) * Q(c, d)^{-1}$
  * $Q(a, b) / Q(c, d) = Q(ad, bc)$

### Division by 1

These behave exactly like the integers, and thus we can define a mapping between
a subset of the rationals and the integers.

  * $Q(a, 1) + Q(b, 1) = Q(a + b, 1)$
  * $Q(a, 1) * Q(b, 1) = Q(a * b, 1)$
  * $-Q(a, 1) = Q(-a, 1)$

 Rational   | Integer
 ---------- | -------
 $Q(-2, 1)$ | $-2$
 $Q(-1, 1)$ | $-1$
 $Q(0, 1)$  | $0$
 $Q(1, 1)$  | $1$
 $Q(2, 1)$  | $2$

### Division by 0

The domain limitation on $Q(a, b)$ where $b ≠ 0$ is implied by the two 
statements below:

  * $c * 0 = 0$
  * $Q(a, b) * Q(b, 1) = Q(ab, b)$

We can see that $Q(ab, b) = Q(a, 1)$ because $ab = ba$. What this means is if
$b = 0$ then the result will always be $0$.

## Exponentiation

  * $Q(a, b)^n = Q(a^n, b^n)$
  * $Q(a, b)^{-1} = Q(b, a)$

### Identities

  * $Q(a, b)^x * Q(a, b)^y = Q(a, b)^{x + y}$
  * $(Q(a, b)^x)^y = Q(a, b)^{xy}$
  * $Q(a, b)^x * Q(c, d)^x = Q(ac, bd)^x$

## Commentary on Approach

Speaking informally, we might say that additive inverses are what make integers
more powerful over naturals. We might also say that multiplicative inverses are
what make the rationals more powerful over the integers.

Furthermore, $ℤ + ℤ$ and $ℚ * ℚ$ are similar because they are both 
same-with-same dimension operations:

  * $Z(a, b) + Z(c, d) = Z(a + c, b + d)$
  * $Q(a, b) * Q(c, d) = Q(a * c, b * d)$
  * $C(a, b) + C(c, d) = C(a + c, b + d)$

$ℤ * ℤ$ and $ℚ + ℚ$ are also similar because they are both 
different-with-different dimension operations resembling distribution.

  * $(a + b) * (c + d) = (ac + bd + ad + bc)$
  * $Z(a, b) * Z(c, d) = Z(ac + bd, ad + bc)$
  * $Q(a, b) + Q(c, d) = Q(ad + bc, bd)$

--------------------------------------------------------------------------------

There's a triple which forms a field $(ℂ, +, *)$ where a member of $ℂ$ is 
expressed in the form $C(a, b)$ such that $\{ a, b \} ∈ ℝ$.

## Addition

  * $C(a, b) + C(c, d) = C(a + c, b + d)$
  * $C(a, b) * C(c, d) = C(ac - bd, ad + bc)$
