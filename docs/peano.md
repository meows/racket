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
3. Let `a++` never equal `a`.

## Equality `==`

1. `a == a`
2. if `a == b` then `b == a`
3. if `a == b` and `b == c` then `a == c`

``` clojure
```

## Unit Test

