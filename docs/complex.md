# Naturals (ℕ)

There is a natural group with three objects $(ℕ, 0, S)$, defined by these 5 Axioms:

  1. $0 ∈ ℕ$
  2. $S(n) ∈ ℕ$
  3. $S(n)$ ≠ $0$
  4. $S(a) = S(b) := a = b$
  5. Let $P: ℕ → \{0, 1\}$ be a boolean function on $ℕ$; then $P(0) ∧ P(S(n)) := P(n)$.

> Another restatement of Axiom 5 is for $ℕ$ to be the smallest set obeying Axioms 1
> to 4.

## 1. Addition ($ℕ + ℕ$)

  $$n + m = \begin{cases}
    0 + m    = m \\
    S(n) + m = (n + m) \\
  \end{cases}$$

## 2. Multiplication ($ℕ * ℕ$)

  $$
  n * m :=
      \begin{cases}
        0 * m    = 0 \\
        S(n) * m = (n * m) + m \\
      \end{cases}
  $$

## 3. Exponentiation ($ℕ ∧ ℕ$)

  $$m^n :=
    \begin{cases}
      m^0      = 1\\
      m^{S(n)} = m^n * m \\
    \end{cases}$$

--------------------------------------------------------------------------------

## Field Property: Commutativity of Addition

#### Lemma: Commutativity of $+$ with $\{ 0, n \}$.

1. We question whether this statement is true:

  $$n + 0 \stackrel{?}{=} n$$

2. First we find the base case which is given to us by the definition of addition:

  $$0 + 0 \stackrel{?}{=} 0$$
  $$0 = 0$$

3. And then we find the next successive case:

  $$S(n) + 0 \stackrel{?}{=} S(n)$$
  $$S(n) + 0 = S(n + 0)$$
  $$S(n) + 0 = S(n)$$

We have now confirmed the lemma:

  $$0 + n = n + 0 = n$$

#### Lemma: $n + S(m) = S(n + m)$

  $$n + S(m) \stackrel{?}{=} S(n + m)$$
  $$0 + S(n) \stackrel{?}{=} S(0 + n)$$
  $$S(n) = S(n)$$
  $$S(n) + S(m) \stackrel{?}{=} S(S(n) + m)$$
  $$S(n + S(m)) = S(S(n + m))$$

#### Field Property: Commutativity of $+$ with $\{ a, b \}$.

Finally we look at:

  $$S(a) + S(b) \stackrel{?}{=} S(b) + S(a)$$
  $$S(a + S(b)) = S(b + S(a))$$
  $$a + S(b) = b + S(a)$$

# Integers (ℤ)

There is an integer commutative ring $(ℤ, +, *)$. An integer can be constructed as 
pairs of naturals of the form $Z(a, b)$ where $\{a, b\} ∈ ℕ$.

## Equality

Equality of the integers is defined by equality of the naturals in a comparison of 
different-with-different combinations.

  * $Z(a, b) := Z(c, d)$ _iff_ $a + d = b + c$

## Addition

Addition can be thought of as an operation that combines same-with-same dimensions.

  * $Z(a, b) + Z(c, d) := Z(a + c, b + d)$

## Additive Inverse

This is a notable extension over the naturals because now $+$ becomes an invertible 
function.

  * $-Z(a, b) := Z(b, a)$
  * $Z(a, b) - Z(c, d) := Z(a, b) + -Z(c, d)$

## Multiplication

$Z_A * Z_B$ can be interpreted as $Z(Z_A · Z_B, Z_A × Z_B)$.

  * $Z(a, b) * Z(c, d) := Z(a c + b d, a d + b c)$

--------------------------------------------------------------------------------

# Rationals (ℚ)

There is a rational field $(ℚ, +, *, 0, 1)$. A rational can be constructed as pairs 
of integers of the form $Q(a, b)$ where $\{ a, b \} ∈ ℤ$ and $b ≠ 0$.

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

Division of two rationals can be described as a different-with-different dimension 
operation.

  * $Q(a, b) / Q(c, d) = Q(a, b) * Q(c, d)^{-1}$
  * $Q(a, b) / Q(c, d) = Q(ad, bc)$

### Division by 1

These behave exactly like the integers, and thus we can define a mapping between a 
subset of the rationals and the integers.

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

The domain limitation on $Q(a, b)$ where $b ≠ 0$ is implied by the two statements 
below:

  * $c * 0 = 0$
  * $Q(a, b) * Q(b, 1) = Q(ab, b)$

We can see that $Q(ab, b) = Q(a, 1)$ because $ab = ba$. What this means is if $b = 0$ 
then the result will always be $0$.

## Exponentiation

  * $Q(a, b)^n = Q(a^n, b^n)$
  * $Q(a, b)^{-1} = Q(b, a)$

### Identities

  * $Q(a, b)^x * Q(a, b)^y = Q(a, b)^{x + y}$
  * $(Q(a, b)^x)^y = Q(a, b)^{xy}$
  * $Q(a, b)^x * Q(c, d)^x = Q(ac, bd)^x$

## Commentary on Approach

Speaking informally, we might say that additive inverses are what make integers more 
powerful over naturals. We might also say that multiplicative inverses are what make 
the rationals more powerful over the integers.

Furthermore, $ℤ + ℤ$ and $ℚ * ℚ$ are similar because they are both same-with-same 
dimension operations:

  * $Z(a, b) + Z(c, d) = Z(a + c, b + d)$
  * $Q(a, b) * Q(c, d) = Q(a * c, b * d)$
  * $C(a, b) + C(c, d) = C(a + c, b + d)$

$ℤ * ℤ$ and $ℚ + ℚ$ are also similar because they are both different-with-different 
dimension operations resembling distribution.

  * $(a + b) * (c + d) = (ac + bd + ad + bc)$
  * $Z(a, b) * Z(c, d) = Z(ac + bd, ad + bc)$
  * $Q(a, b) + Q(c, d) = Q(ad + bc, bd)$

--------------------------------------------------------------------------------

There's a triple which forms a field $(ℂ, +, *)$ where a member of $ℂ$ is expressed 
in the form $C(a, b)$ such that $\{ a, b \} ∈ ℝ$.

## Addition

  * $C(a, b) + C(c, d) = C(a + c, b + d)$
  * $C(a, b) * C(c, d) = C(ac - bd, ad + bc)$

--------------------------------------------------------------------------------

