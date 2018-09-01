---
id: sequence-linear-1
title: Linear Series
hide_title: true
sidebar_label: Linear Series
---

# Linear Series

Sometimes people use the term sequence and series the same way. Some people even
say that when you turn things into a sequence, that you're _serializing_ it. But
if we wanted to be very precise, when mathematicians say **series**, they mean
the sum of a sequence.

Before we have looked at sequences like these:

 * `0, 1, 2, 3, 4, 5, 6...`
 * `10, 7, 4, 1, -2, -5...`
 * `-10, -5, 0, 5, 10, 15...`

These sequences all have something in common in that their velocity never
changes. They can all be described by a function `f(n) = an + b`, where `a` is
a constant that controls the velocity of the sequence, and `b` is a constant
that controls the starting position.

You have also been asked before to find the sum of a finite linear sequence,
also known as a linear series.

 * `0 + 1 + 2 + 3 + 4 + 5 + 6`
 * `10 + 7 + 4 + 1 + -2 + -5`
 * `-10 + -5 + 0 + 5 + 10 + 15`

## The Sum of a Linear Sequence

For any finite linear sequence `s`, such as `(10 7 4 1 -2 -5)`,

We can always imagine a doubling of the same sequence but with the reverse of
the sequence.

```
  10  7  4  1 -2  -5
+ -5 -2  1  4  7  10
--------------------
   5  5  5  5  5   5

 s = (10, 7, 4, 1, -2, -5)  A finite linear sequence.
2s = 5 x 6 = 30             Sum of double the sequence.
 s = 15                     The sum s is 15.
```

### Observations

 * There are `6` terms in this linear sequence
 * the first term is `10`
 * the last term is `-5`

By pairing a sequence with its reverse image, we can get `n` many additive pairs
that all have the same value, where `n` is the number of terms we wanted to add.
In this case we have `5 x 6 = 30`, but since this is double what we started
with, we take the half of `30` to get `15`.

If we generalized this into a formula:

`sumLinear(si, sF, terms) = 1/2 * terms * (si + sF)`

Or in Racket:

``` clojure
(define (sum-linear si sF terms)
   (* 1/2 terms (+ si sF)))
```

## Example Problem

Find the sum of the linear sequence:

 * `3, 5, 7, 9, ..., 23`

First we need to determine how many terms are in the sequence. We use function:

 0. `f(n) = an + b`
 1. `f(n) = 2n + 3`
 2. `f(n) = 2n + 3 = 23`
 3. `f(n) = 2n = 20`
 4. `f(10) = 20`

There are `11` items in this sequence since we started counting from `0`.

``` clojure
; 1/2 * 11 * (+ 3 23) = 143
(sum-linear 3 23 11) ;; → 143
```

Therefore, the sum of of the linear sequence `f(n) = 2n + 3` for `11` terms 
starting from `f(0)` is `143`.