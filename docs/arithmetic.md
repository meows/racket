---
id: arithmetic
sidebar_label: More Arithmetic
hide_title: true
---

## Math Programming

## Arithmetic

* `+` is for addition
* `-` is for subtraction
* `/` is for division
* `*` is for multiplication
* `expt` is for exponentiation
* `modulo` means *modulo*, which helps you find the remainder of division between two numbers
* `lcm` is Least Common Multiple
* `gcd` is Greatest Common Divisor

## Number Comparison

Below are some comparison functions that you may have encountered before in 
math. A comparison function takes two inputs and returns one output, either 
`true` or `false`.

#### `=` Equal

The equals operator `=` takes two (or more) numbers, sees if they are equal, and 
returns either `true` or `false`.

``` clojure
(= 42 42)  ;; returns true
(= 24 42)  ;; returns false

;; these will return true
(= (+ 30 15) (+ 15 30))
(= (* 30 15) (* 15 30))

;; these will return false
(= (- 30 15) (- 15 30))
(= (/ 30 15) (/ 15 30))
```

> Note: You might've notice that the same symbols you've found in math seem to 
> do very similar things. For example, what would we say about `12 = 5`? We 
> would say that statement is false. Or how about `12 > 5`? We would say this 
> statement is true.

#### `<` Lesser-than

The less-than operator `<` takes two numbers, sees if the *first* number is 
smaller than the *second* one, and then returns `true` or `false`.

``` clojure
(< 1 1)    ;; → false
(< 1 10)   ;; → true
(< 10 1)   ;; → false
(< 15 30)  ;; → true
(< 30 15)  ;; → false
```

#### `<=` Lesser-than or equal to

The lesser-than or equal-to operator `<=` takes two numbers, sees if the *first*
number is smaller-than **or** equal to the *second* one, and then returns `true` 
or `false`.

``` clojure
(<= 1 10)   ;; → true
(<= 10 1)   ;; → false
(<= 1 1)    ;; → true
(<= 10 10)  ;; → true
```

#### `>=` Greater-than or equal to

``` clojure
(>= 1 10)   ;; → false
(>= 10 1)   ;; → true
(>= 1 1)    ;; → true
(>= 10 10)  ;; → true
```

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
