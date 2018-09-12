# Naturals (ℕ)

There is a Natural group (ℕ, 0, S).

1. 0 ∈ ℕ
2. S(n) ∈ ℕ
3. S(n) ≠ 0
4. S(a) == S(b) iff a == b
5. Let `P` be a boolean function on the naturals. If `P(0)` and `P(S(n))`, then
   `P(n)` for all `n`.

   Another restatement of this is: Let `ℕ` be the smallest set which obeys all
   the above 4 rules. Both of these seemingly different restatements of the same
   rule serve to exclude anything extra from what we've defined for our set.

   Otherwise, people might propose that your system is underdescribed:

   1. Let us test the theory that `{ π } ∈ ℕ`.
   2. By implication of Axiom 2, `π++` is also natural.
   4. `0++ ==? π++` Let us evaluate a hypothesis.
   5. `0 ==? π` We use Axiom 4 to rewrite the string. One can also think of this
      as virtual subtraction. We have now arrived to a contradiction.

   We now have a problem because `π` is not reachable from `0` with `S`; so to
   protect induction, we need a way to exclude elements which can't be
   accessed from `0` from `S`.

## Addition

Addition `+` is represented as a recursion on `S`.

  * 0 + m == m
  * S(n) + m == S(n + m)

## Multiplication

Multiplication is represented as a recursion on `+`.

  * 0 * m == 0
  * S(n) * m == (n * m) + m

# Integers (ℤ)

There is an integer commutative ring (ℤ, +, *) where { a, b, c, d } ∈ ℕ. An
integer can be constructed as pairs of naturals of the form ℤ(a, b).
Commutativity isn't required for a ring, but is important enough to specify
up-front as though it were its own related but distinct category.

## Equality

Equality of the integers is defined by equality of the naturals under addition.

  * ℤ(a, b) == ℤ(c, d) iff a + d == b + c

## Addition

  * ℤ(a, b) + ℤ(c, d) == ℤ(a + c, b + d)

## Additive Inverse

  * -ℤ(a, b) == ℤ(b, a)
  * ℤ(a, b) - ℤ(c, d) == ℤ(a, b) + -ℤ(c, d)

## Multiplication

Multiplication is a dot-product of two vectors.

  * ℤ(a, b) * ℤ(c, d) == ℤ(ac + bd, ad + bc)

# Rationals (ℚ)

There is a rational field (ℚ, +, *) where { a, b, c, d } ∈ ℤ. A field gains
over a ring with commutativity and closure under division with exception of 0. A
rational can be constructed as pairs of integers of the form ℚ(a, b), where
b ≠ 0.

The final restriction in the function's domain is implied or constrained by
previous identities.

## Equality

  * ℚ(a, b) == ℚ(c, d) iff ad = bc

## Addition

  * ℚ(a, b) + ℚ(c, d) == ℚ(ad + bc, bd)

## Additive Inverse

  * -ℚ(a, b) == ℚ(-a, b)

## Multiplication

  * ℚ(a, b) * ℚ(c, d) == ℚ(ac, bd)

## Multiplicative Inverse

  * ℚ(a, b)^-1 == ℚ(b, a)

## Division

We define rational division as multiplication of one rational by the
multiplicative inverse of another rational.

  * ℚ(a, b) / ℚ(c, d) == ℚ(a, b) * ℚ(c, d)^-1
  * ℚ(a, b) / ℚ(c, d) == ℚ(ad, bc)

### Division by 1

These behave exactly like the integers, and thus we can define a mapping between
a subset of the rationals and the integers.

ℚ(a, 1) + ℚ(b, 1) == ℚ(a + b, 1)
ℚ(a, 1) * ℚ(b, 1) == ℚ(a * b, 1)
-ℚ(a, 1) == ℚ(-a, 1)

### Division by 0

We don't have a consistent way to define division by `0` because we define 
division as merely multiplication with a twist. But when that involves 
multiplying by `0`, then we cannot have both rules hold below:

  * c * 0 == 0
  * ℚ(a, b) * ℚ(b, 1) == ℚ(ab, b)

Since multiplying by `0` destroys information, we'll never get back `a` even
though we know that `ℚ(ab, b) == ℚ(a, 1)`.

## Exponentiation

  * ℚ(a, b)^n == ℚ(a^n, b^n)
