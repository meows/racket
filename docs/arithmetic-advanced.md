---
id: arithmetic-advanced
sidebar_label: Advanced Arithmetic
title: Advanced Arithmetic
hide_title: true
---

# Number Operations

## `expt` Exponentiation

The exponentiation function `expt` requires two inputs, (1) the first one is the
base, and (2) the second one is the exponent. Therefore:
  * `(expt 3 4)` should be interpreted as _base 3 to the exponent of 4_.
  * `(expt 4 3)` should be interpreted as _base 4 to the exponent of 3_.
  * `(expt 5 2)` should be interpreted as _base 5 to the exponent of 2_.

``` clojure
(expt 1 0) ;; → (*)         → 1
(expt 2 1) ;; → (* 2)       → 2
(expt 3 2) ;; → (* 3 3)     → 9
(expt 4 3) ;; → (* 4 4 4)   → 64
(expt 5 4) ;; → (* 5 5 5 5) → 625

;; Exponentiation by exponent of 2
(expt 1 2) ;; → 1
(expt 2 2) ;; → 4
(expt 3 2) ;; → 9
(expt 4 2) ;; → 16
(expt 5 2) ;; → 25

;; Exponentiation by exponent of 1/2
(expt  1 1/2) ;; → 1
(expt  4 1/2) ;; → 2
(expt  9 1/2) ;; → 3
(expt 16 1/2) ;; → 4
(expt 25 1/2) ;; → 5

;; Exponentiation by exponent of 3
(expt 1 3) ;; → 1
(expt 2 3) ;; → 8
(expt 3 3) ;; → 27
(expt 4 3) ;; → 64
(expt 5 3) ;; → 125

;; Exponentiation by exponent of 1/3
(expt   1 1/3) ;; → 1
(expt   8 1/3) ;; → 2
(expt  27 1/3) ;; → 3
(expt  64 1/3) ;; → 4
(expt 125 1/3) ;; → 5
```

## `log` Logarithm

The function `log` consumes two inputs, a number `n` and a base `b`, and it 
returns a number `e` for which `b` to the exponent of `e` will equal `n`.

``` clojure
(log  1 2) ;; → 0
(log  2 2) ;; → 1
(log  4 2) ;; → 2
(log  8 2) ;; → 3
(log 16 2) ;; → 4
(log 32 2) ;; → 5

(log 64 2)  ;; → 6
(log 64 4)  ;; → 3
(log 64 8)  ;; → 2
(log 64 16) ;; → 1.5
(log 64 32) ;; → 1.2
(log 64 64) ;; → 1
```

## `quotient`

The `quotient` function helps you find the quotient of a division between two
natural numbers, where the first number is the *dividend*, and the second number
is the *divisor*.

``` clojure
(quotient 123456789 10) ;; → 12345678
(quotient 987654321 10) ;; → 98765432
```

## `remainder`

The `remainder` function helps you find the remainder of a division between two 
natural numbers, where the first number is the *dividend*, and the second number 
is the *divisor*.

``` clojure
(remainder 10 2) ;; → 0
(remainder 2 10) ;; → 2
(remainder 80 3) ;; → 2
(remainder 81 3) ;; → 0
(remainder 82 3) ;; → 1
```

Some people use the `remainder` function to find whether a number `n` is even by
seeing if `(remainder n 2)` is zero, in other words, whether dividing a number 
by `2` leaves no remainder, which is in fact the definition of an even number:

``` clojure
(define (even? n) 
   (zero? (remainder n 2)))

(define (odd? n) 
   (not (even? n)))
```

## `abs` Absolute Value

The absolute value function `abs` takes a number and always makes it positive.

``` clojure
(abs -10)       ;; → 10
(abs  10)       ;; → 10
(abs (abs -10)) ;; → 10
```

## `gcd` Greatest Common Divisor

The greatest common divisor `gcd` function takes one or more numbers, and finds
greatest common divisor or factor among them.

``` clojure
(gcd  8 12 16) ;; → 4
(gcd 15 18 27) ;; → 3
```

## `lcm` Least Common Multiple

The least common multiple `lcm` function takes one or more integers, and finds
the smallest integer that's divisible by all the inputs integers. It's useful
for finding out the smallest common denominator between two or more fractions.

``` clojure
(lcm  8 12 16) ;; → 48
(lcm 15 20 25) ;; → 300
```

## `max`

`max` takes one or more numbers and returns the biggest value found among them:

``` clojure
(max 3)                ;; → 3
(max -3 0 3 4)         ;; → 4
(apply max (range 10)) ;; → 9
```
