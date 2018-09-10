---
id: peano
sidebar_label: Peano
hide_title: true
---

# Definitions

1. Let there be a set `ℕ` called the naturals.
2. Let `0 ∈ ℕ`.
3. Let `ℕ` be equipped with a unary function `++`.
4. Let `ℕ` be equipped with a binary function `=`.
5. Let `n++` mean the application of the `++` function with `n` as the input.
6. If `a` and `b` are members from `ℕ`, then `a = b` means to apply the `=`
   function with `a` and `b` as ordered inputs.
7. Let there be a name translation scheme to transform the symbols from `ℕ` to
   that of the western convention. These translations are merely for
   convenience, as we have only formally defined `0`, `++`, and `=`.

   The parentheses aren't operationally important and aren't meant to suggest an
   order of operation. They're just part of the notation for functions to
   typographically indicate the input, in the sense that `(n)++` means `++(n)`,
   or `f(x)` means `(x)f`.

   * `0 := 0`
   * `1 := 0++`
   * `2 := (0++)++`
   * `3 := ((0++)++)++`
   * `4 := (((0++)++)++)++`

> Note that `:=` means to rename; the notation is used as to not overload the
> the equality operator.

# Axioms

## Equality `=`

Equality is the most basic operator of all and often goes unmentioned. Equality
allows us to compare different things in math and say whether they are unique,
otherwise I wouldn't be able to ask whether `3` is different from `5`.
Generally, it's only when things change that we can appreciate behavior, and
`=` allows us to detect change.

1. `a = a`.
2. If `a = b` then `b = a`.
3. If `a = b` and `b = c` then `a = c`.

* The first rule allows us to ask whether `a` is the same as `a`.
* The second rule says that the order of inputs don't matter to `=` -- it's
  _commutative_.
* The third rule is called transitivity, as if the identity of `a` was
  transferred to `b`, and then to `c`. In a sense it turns `=` into a way to
  rename things.

> Informally, let `!=` mean anything which doesn't follow our rule for `=`.
> `0 = 0++` wouldn't follow our rules above, so we'd write it as `0 != 0++`.

## Sucessor `++`

1. Let `n++` be a natural.
2. Let `n++` never equal `0`.
3. If `a` and `b` are naturals, let `a++ = b++` iff `a = b`. This rule also
   means that every `n++` is unique.

* The first rule defines the domain and codomain of `++` to the naturals.
* The second rule constrains the range of `++` and privileges `0` under `++`.
* The third rule ensures that every natural is unique, which also stops looping
  number systems.

### Informal Definition

The equality we define here is a 2-arity function on the naturals which returns
either `true` or `false` for every pair of inputs. Alternatively, if the reader
objects to new symbols with deliberate cultural meaning, we might instead
arbitrarily assign the result of `=` to either `0` or `0++`, with a wink about
how `0++` means `true`, and `0` means `false`.

That we can map many mathematical expressions into categories differentiated on
consistency to our rules is what matters, not that we name something `0` or
`false`.

## Observations

1. Any notion of the naturals always has a metaphorical `0`, which is privileged
   under `++`.

2. Any notion of the naturals also comes equipped with two operators, a binary
   equality `=` and a unary successor `++`.

3. The relationship between one natural and any other are determined solely by
   the `++` and `=` operators. Therefore, if I have a bunch of things that look
   natural:

   `{ A, B, C, D, ... }`

   That still doesn't make them natural. There's no function that tells me how
   to get from one letter to another. That is to say, this is just a bag of
   unique letters with no relationship to each other. They could just as well be
   arranged as:

   `{ B, A, C, D, ... }`

   And one could not object to any ordering or usage of these symbols. Without
   behavior, all you have are a bag of symbols.

## Final Definition

Now that we have defined an infinite set `ℕ`, a natural `0`, `++` and `=`, let
the naturals be the smallest set which implements all these rules.

## Addition

Addition is defined as a renaming rule derived from `++`.

  * `0 + n := n`
  * `n++ + m := (n + m)++`

### Implication of `n + 0 = n`

The implications of `n + 0 = n` are consistent.

  1. `0 + 0 = 0` Base case given by definition of addition.
  2. `n++ + 0 = n++` Hypothesis.
  3. `(n + 0)++ = n++` Definition of addition.
  4. `n++ = n++` Consistency of hypothesis verified.

### Implications of `n + m++ = (n + m)++`

  0. `0 + m++ = (0 + m)++` Base hypothesis.
  1. `m++ = m++` The implications are consistent.

  0. `n + m++ = (n + m)++` Inductive hypothesis.
  1. `n++ + m++ = (n++ + m)++` Next step.
  2. `(n + m++)++ = ((n + m)++)++` Definition of addition.
  3. `((n + m)++)++ = ((n + m)++)++` Replacement by inductive hypothesis shows
     the implications are consistent.

## Multiplication

  * `0 * n := 0`
  * `n++ * m := (n * m) + m`

### `0 * n = n * 0`

  1. `n++ * 0 = n * 0`
  2. `(n * 0) + 0 = n * 0`
  3. `n * 0 = n * 0`

This proves that all `n * 0` problems are equivalent, and since `0 * 0 = 0`, 
then `n++ * 0 = n * 0 = 0`.

### n++ * m++ = m++ * n++

(n * m++) + m = (m * n++) + n
