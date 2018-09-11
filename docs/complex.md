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

## Addition

Addition `+` is represented as another way to write `S`.

  * 0 + m == m
  * S(n) + m == S(n + m)

## Multiplication

  * 0 * m == 0
  * S(n) * m == (n * m) + m

# Integers (ℤ)

There is an Integer ring (ℤ, +, *) where { a, b, c, d } ∈ ℕ. A ring is almost a
field except that its not *necessarily* closed under division. For the aesthetic
of concise word choice, I will generally try to pick the minimally powerful 
construct.

## Equality

  * ℤ(a, b) == ℤ(c, d) iff a + c == b + d

## Addition

  * ℤ(a, b) + ℤ(c, d) == ℤ(a + c, b + d)

## Negation

  * -ℤ(a, b) == ℤ(b, a)
  * ℤ(a, b) - ℤ(c, d) == ℤ(a, b) + -ℤ(c, d)

## Multiplication

  * ℤ(a, b) * ℤ(c, d) == ℤ(ac + bd, ad + bc)

# Rationals (ℚ)

There is a Rational field (ℚ, +, *) where { a, b, c, d } ∈ ℤ. A field gains 
over a ring in closure under division with exception of `0`.

## Equality

  * ℚ(a, b) == ℚ(c, d) iff ad = bc

## Addition

  * ℚ(a, b) + ℚ(c, d) == ℚ(ad + bc, bd)

## Additive Negation

  * -ℚ(a, b) == ℚ(-a, b)
 
## Multiplication

  * ℚ(a, b) * ℚ(c, d) == ℚ(ac, bd)

## Multiplicative Inverse

  * ℚ(a, b)**-1 == ℚ(b, a)
