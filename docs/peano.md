---
id: peano
sidebar_label: Peano
hide_title: true
---

# Definitions

1. Let there be an infinite set `N` called the naturals.
2. Let `N` contain an element that looks like `0`.
3. Let `N` be equipped with a unary function `++`.
4. Let `N` be equipped with a binary function `==`.
5. Let `n++` mean the application of the `++` function with `n` as the input.
6. If `a` and `b` are members from `N`, then `a == b` means to apply the `==`
   function with `a` and `b` as ordered inputs.
7. Let there be a name translation scheme to transform the symbols from `N` to
   that of the western convention. These translations are merely for 
   convenience, as we have only formally defined `0`, `++`, and `==`.
   
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

## Equality `==`

Equality is the most basic operator of all and often goes unmentioned. Equality
allows us to compare different things in math and say whether they are unique,
otherwise I wouldn't be able to ask whether `3` is different from `5`.
Generally, it's only when things change that we can appreciate behavior, and
`==` allows us to detect change.

1. `a == a`.
2. If `a == b` then `b == a`.
3. If `a == b` and `b == c` then `a == c`.

* The second rule says that the order of inoputs don't matter to `==` -- it's 
  _commutative_.
* The third rule is called transitivity, as if the identity of `a` was 
  transferred to `b`, and then to `c`. In a sense it turns `==` into a way to
  rename things.

## Sucessor `++`

1. Let `n++` be a natural.
2. Let `n++` never equal `0`.
3. If `a` and `b` are naturals, let `a++ == b++` iff `a == b`. This rule also 
   means that every `n++` is unique.

* The first rule defines the domain and codomain of `++`.
* The second rule constrains the range of `++` and privileges `0` under `++`.
* The third rule ensures that every natural is unique, which also stops looping 
  number systems (such as degrees to measure angles where `0 == 360`).

### Informal Definition

The equality we define here is a 2-arity function on the naturals which returns 
either `true` or `false` for every pair of inputs. Alternatively, if the reader 
objects to new symbols with deliberate cultural meaning, we might instead 
arbitrarily assign the result of `==` to either `0` or `0++`, with a wink about 
how `0++` means `true`, and `0` means `false`.

That we can map many mathematical expressions into categories differentiated on 
consistency (to our rules) is what matters, not that we name something `0` or 
`false`.

## Unit Test

### Is 3 natural?

1. `0 := 0`
2. `1 := 0++`.
3. `2 := 1++`.
4. `3 := 2++`.
5. `3` is natural because it is the successor of a natural.

### Is 3 equal to 0?

1. Recall that `3 := 2++`
2. That would imply `2++ == 0`, which violates our rule that `n++` cannot be `0`.

### Is 4 equal to 1?

1. Assume that `4 == 1` 
2. Then `3++ == 0++`
3. Therefore `3 == 0` by our rule of how `a++ == b++` translates to `a == b`.
4. But recall that `3 := 2++`, which implies that `2++ == 0`, which violates our
   rule that `n++` can never equal `0`.
5. Even if we began at `6 == 2` or higher, the `(a++ == b++) := (a == b)` rule
   allows us to walk backward until we find a natural.

### `(0++)++ == ((0++)++)++`?

Because of the rule that `a++ == b++ := a == b`,

1. `(0++)++ == ((0++)++)++`
2. `0++ == (0++)++`
3. `0 == 0++`

And now we have violated the rule that says nothing can be the successor to 
zero.

## Observations

1. Any notion of the naturals always has a metaphorical `0`, which is privileged
   under `++`.

2. Any notion of the naturals also comes equipped with two operators, a binary
   equality `==` and a unary successor `++`.

3. The relationship between one natural and any other are determined solely by
   the `++` and `==` operators. Therefore, if I have a bunch of things that look
   natural:

   `{ A, B, C, D, ... }`

   That still doesn't make them natural. There's no function that tells me how
   to get from one letter to another. That is to say, this is just a bag of
   unique letters with no relationship to each other. They could just as well be
   arranged as:

   `{ B, A, C, D, ... }`

## Addition

1. Let `+` be a binary function on the naturals to the naturals.
2. If `m` is a natural, let `0 + m := m`.
3. If `n` and `m` are naturals, then `(n++) + m := (n + m)++`.
