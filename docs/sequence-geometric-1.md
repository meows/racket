---
id: sequence-geometric-1
title: Geometric Series
hide_title: true
sidebar_label: Geometric Series
---

> WIP: Don't use yet.

# Geometric Series

We have previously tackled sequences such as:

 * `1, 2, 4, 8, 16, 32, 64...`
 * `1, -2, 4, -8, 16, -32, 64...`
 * `2, 4, 8, 16, 32, 64, 128...`
 * `4, 12, 36, 108, 324, 972, 2916...`

These sequences are called geometric sequences, and they can be identified by
the common ratio from one sequence item to the next. A function for any 
geometric sequence can be defined by the value of the starting position and the 
common ratio consecutive values.

``` clojure
(define (geometric start ratio)
   (λ (n) 
      (* start (expt ratio n))))

(map (geometric  1 2) (range 7)) ;; → '(1   2  4    8  16   32   64)
(map (geometric -1 2) (range 7)) ;; → '(1  -2  4   -8  16  -32   64)
(map (geometric  2 2) (range 7)) ;; → '(2   4  8   16  32   64  128)
(map (geometric  4 3) (range 7)) ;; → '(4  12 36  108 324  972 2916)
```

But how might we find the sum of a geometric series? If we imagined that the
following problem represented the start of the summation of a geometric sequence:

### Finite

In the finite version, subtracting the sums of the two sequences leaves us with
two terms. Some discussions of the formula will have $r^n$ instead of 
$r^{n + 1}$ because they choose their concept of natural to exclude $0$ for 
beauty, but I see that as a mediocre motivation compared to the pedagogical
value of communication on a difficult subject.

$$S = ar^0 + ar^1 + ar^2 + ar^3 + ... + ar^n$$

$$S * r = ar^1 + ar^2 + ar^3 + ar^4 + ... + ar^{n + 1}$$

$$S - Sr = ar^0 - ar^{n + 1}$$

$$S(1 - r) = a(1 - r^{n + 1})$$

$$S = \dfrac{a(1 - r^{n + 1})}{1 - r}$$

### Infinite

* $S = ar^0 + ar^1 + ar^2 + ar^3 + ... + ar^n$
* $S * r = ar^1 + ar^2 + ar^3 + ar^4 + ... + ar^{n + 1}$
* $S - Sr = ar^0$
* $S(1 - r) = a$

* $S = \dfrac{a}{1 - r}$
