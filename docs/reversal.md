---
id: reversal
title: reversal
hide_title: true
sidebar_label: Undoing what you did
---

# Undoing what you did

If you had an integer `x`, and I added 3 to it to get a new number `y`, could 
you reverse what I did and get back your original number? For example:

``` clojure
;; Somewhere above I secretly defined x -- but I won't let you see the number!
;; Now you must fine out how to get back the original number given y.
(define y (+ x 3))
(define add3 (+ n 3))
```

But of course, to get back the number, you probably see that we could just
easily add `y` with `-3`:

``` clojure
;; adding by -3 is the same as subtracting by 3
(define get-original-answer (+ y -3))
```

How about undoing a function?

``` clojure
(define example 10)
(define (sub3 x) (+ x -3))
(define (add3 x) (+ x 3))
(sub3 (add3 example))  ;; → 10
```

## Addition and Subtraction

``` clojure
(define )
```

## Multiplication and Division

For each problem write a function called `undo` that reverses what each of these
functions do.

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
