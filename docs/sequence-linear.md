---
id: sequence-linear
sidebar_label: Linear Sequences
title: Linear Sequences
hide_title: true
---

# Linear Sequences

We have seen sequences before like these:

* `0, 1, 2, 3, 4, 5...`
* `2, 3, 4, 5, 6, 7...`
* `0, 2, 4, 6, 8, 10...`
* `10, 20, 30, 40, 50, 60...`
* `30, 20, 10, 0, -10, -20...`
* `-33, -35, -37, -39, -41, -43...`

These sequence all have something in common in that the difference from one
number to the next never changes. We call these *linear* sequences because if we
were to graph these points and connect them, they would look like a straight
line.

A function for any linear sequence can be defined with just two facts:
   1. A starting value for the position `p`.
   2. A velocity `v`.

In math, it might be written like: `f(x) = vx + p`, while In Racket, it would
look like:

``` scheme
; p0 -- value of position 0
; v  -- velocity of linear sequence
; n  -- the nth sequence item desired
(define (line p0 v)
   (λ (n)
      (+ p0 (* n v))))

(map (line 2 3) (range 6)) ;; → '(2 5 8 11 14 17)
(map (line 3 2) (range 6)) ;; → '(3 5 7 9 11 13)

(map (line 0 3) (range 6)) ;; → '(0 3 6 9 12 15)
(map (line 3 0) (range 6)) ;; → '(3 3 3 3 3 3)

(map (line -3 2) (range 6)) ;; → '(-3 -1 1 3 5 7)
(map (line 2 -3) (range 6)) ;; → '(2 -1 -4 -7 -10 -13)
```

## Differentiating

We have seen before that one way to get information on a number sequence `s` is
to subtract every value of `s(n)` with `s(n-1)`. If the difference converges
right away to a number, then that is the velocity of the sequence. If it doesn't
converge right away, then the function isn't linear, meaning that its velocity
changes.

Getting a new sequence by finding the difference between the current number and
the previous number is called a difference or _delta_, and it's normally denoted
using the lower-cased delta **Δ**, the 4th letter of the Greek alphabet.

This sequence converges right away to `2`, so we conclude the velocity is `2`.

n | value | formula   | Δ0
- | ----- | -------   | -----
0 |  -3   | `n1 - n0` | 2
1 |  -1   | `n2 - n1` | 2
2 |   1   | `n3 - n2` | 2
3 |   3   | `n4 - n3` | 2
4 |   5   | `n5 - n4` | 2
5 |   7   | `n6 - n5` | 2
6 |   9   | `n7 - n6` | 2
7 |  11   | `n8 - n7` | 2
8 |  13   | `n9 - n8` | 2
9 |  15   | `...`     | `...`

> `Δn` is used to indicate a delta of a sequence. Since we can delta a sequence
> more than once, I label them `Δ0, Δ1, Δ2...`.

This sequence of squared numbers converges eventually but not right away, so we
can conclude that its velocity is changing. The sequence is therefore
non-linear.

n | value | formula   | Δ0    | Δ1
- | ----- | --------- | ----- | -----
0 |  0    | `n1 - n0` | 1     | 2
1 |  1    | `n2 - n1` | 3     | 2
2 |  4    | `n3 - n2` | 5     | 2
3 |  9    | `n4 - n3` | 7     | 2
4 |  16   | `n5 - n4` | 9     | 2
5 |  25   | `n6 - n5` | 11    | 2
6 |  36   | `n7 - n6` | 13    | 2
7 |  49   | `n8 - n7` | 15    | 2
8 |  64   | `n9 - n8` | 17    | `...`
9 |  81   | `...`     | `...` | `...`

This sequence of cubed numbers converges eventually but not right away, so we
can conclude that its velocity is changing. The sequence is therefore
non-linear.

n | value | formula   | Δ0    | Δ1    | Δ2
- | ----- | --------- | ----- | ----- | -----
0 |  0    | `n1 - n0` | 1     | 6     | 6
1 |  1    | `n2 - n1` | 7     | 12    | 6
2 |  8    | `n3 - n2` | 19    | 18    | 6
3 |  27   | `n4 - n3` | 37    | 24    | 6
4 |  64   | `n5 - n4` | 61    | 30    | 6
5 |  125  | `n6 - n5` | 91    | 36    | 6
6 |  216  | `n7 - n6` | 127   | 42    | 6
7 |  343  | `n8 - n7` | 169   | 48    | `...`
8 |  512  | `n9 - n8` | 217   | `...` | `...`
9 |  729  | `...`     | `...` | `...` | `...`

> Notice that unless a sequence is infinite, then we cannot delta it forever,
> because every time the next Δn gets shorter by one number.

## Review Questions

**Q**. What's a linear sequence?
- A sequence of numbers where the velocity of the sequence never changes. In
  other words, if the difference from one number in the sequence to the next is
  always the same.

**Q**. What two things do we need to know to define a function for _any_ linear sequence?
- (1) starting position and (2) velocity.

**Q**. What is delta or `Δ`?
- It's a symbol that often stands for a function or operation that gets the
  difference or "delta" of a numeric sequence.

**Q**. If your sequence is finite, why can't you repeatedly delta it forever?
- Because your sequence gets shorter by one number every time you delta a sequence.

**Q**. How do you tell if your sequence is linear?
1. If the sequence converges to a number with exactly one delta.
2. If the difference from one sequence number to the next never changes.
3. If you can draw a perfectly straight line through all the numbers of your
   sequence on a graph.
