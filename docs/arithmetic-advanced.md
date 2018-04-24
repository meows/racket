## Number Operations

#### `expt` Exponentiation

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
```

#### `modulo` Modulo

The modulo function `modulo` helps you find find the remainder of a division 
between two numbers, where the first number is the *dividend*, and the second 
number is the *divisor*.

``` clojure
(modulo 10 2)  ;; → 0
(modulo 2 10)  ;; → 2
(modulo 80 3)  ;; → 2
(modulo 81 3)  ;; → 0
(modulo 82 3)  ;; → 1
```

Some people use the `modulo` function to find whether a number is even by seeing 
if `(modulo x 2)` is zero, in other words, whether dividing a number by 2 leaves 
any remainder.
