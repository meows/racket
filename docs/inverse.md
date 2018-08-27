---
id: inverse
title: inverse
hide_title: true
sidebar_label: Undoing what you did
---

> WIP: Don't use yet.

# Undoing what you did

If I had an unknown integer `n`, and I added 3 to it to get a new number
`(+ n 3)`, could you reverse what I did and get back your original number?

You would probably add -3 (or subtract 3) to the expression: `(+ (+ n 3) -3)`.

## Addition and Subtraction

For addition, no matter what we add to a number, we can always add another
number to reverse what we just did. Two different numbers which add together to
equal `0` are called additive inverses because they cancel their effects out.

``` clojure
(define (move n)
   (λ (x)
      (+ x n)))

(define 1..6    (range 6))            ;; → '(0 1 2 3 4 5)
(define +3      (map (move  3) 1..6)) ;; → '(3 4 5 6 7 8)
(define +3-undo (map (move -3) +3))   ;; → '(0 1 2 3 4 5)
```

## Multiplication and Division

For multiplication, no matter how we multiply a number `x` by a factor `y`, we
can always multiply the expression by the multiplicative inverse of `y`, that is
`1/y`, to get back the original `x`.

Below we have a function `scale` which consumes a number `m` and returns a new
function.

``` clojure
(define (scale m)
   (λ (x) (* m x)))

(define *3      (map (scale 3) (range 5))) ;; → '(0 3 6 9 12)
(define *3-undo (map (scale 1/3) *3))      ;; → '(0 1 2 3 4)

;; Perhaps not surprising, but we cannot undo multiplication by zero.
(define *0      (map (scale 0) (range 5))) ;; → '(0 0 0 0 0)
(define *0-undo (map (scale 1/0) *0))      ;; → Error: Division by zero is undefined.
```

## Exponentiation

``` clojure
(define (power x)
   (λ (n)
      (expt x n)))

(define (root r)
   (λ (x)
      (round (expt x (/ 1 r)))))

(define (cube x)   (expt x 3))
(define (log2 pow) (log pow 2))
(define (log3 pow) (log pow 3))

(define nats     (range 6))            ;; → '(0 1 2  3  4   5)
(define squares  (map sqr nats))       ;; → '(0 1 4  9 16  25)
(define cubes    (map cube nats))      ;; → '(0 1 8 27 64 125)
(define powers-2 (map (power 2) nats)) ;; → '(1 2 4  8 16  32)
(define powers-3 (map (power 3) nats)) ;; → '(1 3 9 27 81 243)

(map (root 2) squares) ;; → '(0 1 2 3 4 5)
(map (root 3) cubes)   ;; → '(0 1 2 3 4 5)
(map log2 powers-2)    ;; → '(0 1.0 2.0 3.0 4.0 5.0)
```

> The result of these `root` functions might not be precise. Racket is only
> perfect when using rationals with `+`, `-`, `*`, or `/`. There are
> mathematical reasons for this, and almost all languages cannot assure
> reliability for even the most basic math operations.

## Geometry

``` clojure
(define angles-90 (map degrees->radians '(0 90 180 270 360)))
(define angles-45 (map degrees->radians '(0 45 90 135 180 225 270 315 360)))

(map sin angles) ;; →
(map cos angles) ;; →
```
