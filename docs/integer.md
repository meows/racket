# Naturals (ℕ)

There is a natural group `(ℕ, 0, S)`.

1. `0 ∈ ℕ`
2. `S(n) ∈ ℕ`
3. `S(n) ≠ 0`
4. `S(a) == S(b)` iff `a == b`
5. Let `P` be a boolean function on the naturals. If `P(0)` and `P(S(n))`, then 
   `P(n)`.

   Another restatement of this is: Let `ℕ` be the smallest set which obeys all
   the above 4 rules. Both of these seemingly different restatements of the same
   rule serve to exclude anything extra from what we've defined for our set. 
   They also make sure that an inductive proof can cover the entire set.

## Addition

Addition `+` is represented as a recursion on `S`.

  * `0 + m == m`
  * `S(n) + m == S(n + m)`

## Multiplication

Multiplication is represented as a recursion on `+`.

  * `0 * m == 0`
  * `S(n) * m == (n * m) + m`

## Exponentiation

Notably exponentiation is closed under the naturals, but not under the integers.

  * `m^0 = 1`
  * `m^S(n) = m^n * n`

# Integers (ℤ)

There is an integer commutative ring `(ℤ, +, *)`. An integer can be constructed 
as pairs of naturals of the form `ℤ(a, b)` where `{a, b} ∈ ℕ`.

## Equality

Equality of the integers is defined by equality of the naturals.

  * `ℤ(a, b) == ℤ(c, d)` iff `a + d == b + c`

## Addition

Addition can be viewed as a dot-sum of two tuples.

  * `ℤ(a, b) + ℤ(c, d) == ℤ(a + c, b + d)`

## Additive Inverse

  * `-ℤ(a, b) == ℤ(b, a)`
  * `ℤ(a, b) - ℤ(c, d) == ℤ(a, b) + -ℤ(c, d)`

## Multiplication

Multiplication is a dot-product of two tuples.

  * `ℤ(a, b) * ℤ(c, d) == ℤ(ac + bd, ad + bc)`
