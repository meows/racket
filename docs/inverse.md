---
id: inverse
title: inverse
hide_title: true
sidebar_label: Undoing what you did
---

# Undoing what you did

If I had an unknown integer `n`, and I added 3 to it to get a new number 
`(+ n 3)`, could you reverse what I did and get back your original number?

You would probably add -3 (or subtract 3) to the expression: `(+ (+ n 3) -3)`.

## Addition and Subtraction

For addition, no matter what we add to a number, we can always add another 
number to reverse what we just did. Two different numbers which add together to 
equal `0` are called additive inverses because they cancel their effects out.

``` clojure
(define (add11 x) (+ x 11))
(define (add12 x) (+ x 12))
(define (sub13 x) (+ x -13))
(define (sub14 x) (- x 14))
```

## Multiplication and Division

For multiplication, no matter how we multiply a number `x` by a factor `y`, we 
can always multiply the expression by the inverse of `y`, that is `1/y`, to get
back the original `x`.

``` clojure
(define (λa x) (* 13 x))
(define (λb x) (* 3/5 x))
(define (λc x) (/ x 3))
(define (λd x) (/ 4 x))
```

## Exponentiation

``` clojure
(define (λa x) (* x x))
(define (λb x) (* x x x))
(define (λc x) (expt x 1/2))
(define (λc x) (expt x 1/3))
```
