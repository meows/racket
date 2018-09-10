# From the Naturals to the Integers

## The Naturals

There is a triple which forms a group: `(ℕ, 0, ++)`, which we will define with 
5 rules:

1. `0 ∈ ℕ`
2. `n++ ∈ ℕ`
3. `n++ ≠ 0`
4. `a++ = b++ := a = b`
5. Let `ℕ` be the smallest set which follows all the above rules.

Another curious restatement of this rule follows: Let `p`, short for predicate, 
be a boolean function which determines the property of `ℕ` as true or false. 
If `p(n)` is such that `p(0)` is true, and `p(n++)` is a truth which depends on
`p(0)`, then `p` is true for all `n`.

This restatement of the last rule is curious because it sounds little like its
alternative. But they serve the same effect in that they include `0` in the set,
and they exclude anything else that isn't supposed to be natural, such as a
fraction.

### Addition

1. `0 + n := n`
2. `n++ + m := (n + m)++`

### Multiplication

1. `0 * n := 0`
2. `n++ * m := (n * m) + m`

## The Integers

The most notable difference between the naturals and the integers would be their
relationship to subtraction, which is a useful but not closed operation under
the naturals, whereas they are closed under the integers.

An integer is a 2-tuple of naturals: `ℤ(a, b)`.

0. `ℤ(a, b) = ℤ(x, y)` iff `a + y = b + x`.

### Addition

Let `(ℤ, +)` form a group, which we will define now.

0. `ℤ(a, b) + ℤ(x, y) := ℤ(a + x, b + y)`

### Multiplication

Let `(ℤ, *)` form a group, which we will define now.

0. `ℤ(a, b) * ℤ(x, y) := ℤ(ax + by, ay + bx)`

### Negation

0. `-ℤ(a, b) := ℤ(b, a)`

The unary negation simply reverses the `ℤ` 2-tuple.

### Subtraction

0. `ℤ(a, b) - ℤ(x, y) := ℤ(a, b) + -ℤ(x, y) := ℤ(a + y, b + x)`
