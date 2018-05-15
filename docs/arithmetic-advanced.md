---
id: arithmetic-advanced
sidebar_label: Advanced Arithmetic
hide_title: true
---

# Number Operations

## `expt` Exponentiation

The exponentiation function `expt` requires two inputs, the first one being the 
*base*, the second one being the exponent (or power). Therefore, `(expt 3 4)` 
should be interpreted as _3 to the power of 4_, and `(expt 4 3)` should be 
interpreted as _4 to the power of 3_.

``` clojure
(expt 2 1)  ;; → (* 2)
(expt 3 2)  ;; → (* 3 3)
(expt 4 3)  ;; → (* 4 4 4)
(expt 5 4)  ;; → (* 5 5 5 5)
(expt 6 5)  ;; → (* 6 6 6 6 6)

;; Exponentiation by power of 2
(expt 1 2) ;; → 1
(expt 2 2) ;; → 4
(expt 3 2) ;; → 9
(expt 4 2) ;; → 16
(expt 5 2) ;; → 25

;; Exponentiation by power of 1/2
(expt  1 1/2) ;; → 1
(expt  4 1/2) ;; → 2
(expt  9 1/2) ;; → 3
(expt 16 1/2) ;; → 4
(expt 25 1/2) ;; → 5

;; Exponentiation by power of 3
(expt 1 3) ;; → 1
(expt 2 3) ;; → 8
(expt 3 3) ;; → 27
(expt 4 3) ;; → 64
(expt 5 3) ;; → 125

;; Exponentiation by power of 1/3
(expt   1 1/3) ;; → 1
(expt   8 1/3) ;; → 2
(expt  27 1/3) ;; → 3
(expt  64 1/3) ;; → 4
(expt 125 1/3) ;; → 5
```

## `modulo` Modulo

The modulo function `modulo` helps you find the remainder of a division between 
two numbers, where the first number is the *dividend*, and the second number is 
the *divisor*.

``` clojure
(modulo 10 2)  ;; → 0
(modulo 2 10)  ;; → 2
(modulo 80 3)  ;; → 2
(modulo 81 3)  ;; → 0
(modulo 82 3)  ;; → 1
```

Some people use the `modulo` function to find whether a number is even by seeing 
if `(modulo x 2)` is zero, in other words, whether dividing a number by 2 leaves 
no remainder, which is in fact the definition of an even number.
