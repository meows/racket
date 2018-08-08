---
id: peano
sidebar_label: Peano
hide_title: true
---

# Definitions

1. Let there be a non-empty set `N` called the naturals, and let `n` be any
   natural within `N`.
2. Let `N` contain an element that looks like `0`.
3. Let `N` be equipped with a unary function `++`.
4. Let `N` be equipped with a binary function `==`.
5. Let `n++` mean the application of the `++` function with `n` as the input.
6. If `a` and `b` are members from `N`, then `a == b` means to apply the `==`
   function with `a` and `b` as their respective inputs at the appropriate 
   index: `a == b` := `(== a b)`.

7. Let there be a name translation scheme to transform the symbols from `N` to
   that of the western convention:

   * `0 := 0`
   * `1 := 0++`
   * `2 := (0++)++`
   * `3 := ((0++)++)++`
   * `4 := (((0++)++)++)++`

# Axioms

## Sucessor `++`

1. Let `n++` be a natural.
2. Let `n++` never equal `0`. 
3. If `a` and `b` are naturals, let `a++ == b++` be true only if `a == b`. This
   rule also means that every succession is unique.

## Equality `==`

1. `a == a`.
2. if `a == b` then `b == a`.
3. if `a == b` and `b == c` then `a == c`.

### Informal Definition

The equality we define here is a 2-arity function on the naturals which returns 
either `true` or `false` for every pair. Alternatively, if the reader objects to
new symbols with deliberate cultural meaning, we might instead arbitrarily 
assign the result of `==` to either `0` or `0++`, with a wink about how `0++`
means `true`, and `0` means `false`.

## Unit Test

### Is 3 natural?

1. `1 := 0++`.
2. `2 := 1++`.
3. `3 := 2++`.
4. `3` is natural because it is the successor of a natural.

### Is 3 equal to 0?

1. Recall that `3 := 2++`
2. `2++` cannot be `0` because it cannot be the successor to anything.

### Is 4 equal to 1?

1. Assume that `4 == 1` 
2. Then `3++ == 0++`
3. Therefore `3 == 0` by our rule of how `a++ == b++` translates to `a == b`.
4. But recall that `3 := 2++`, which implies that `2++ == 0`, which violates our
   rule that `n++` can never equal `0`.
