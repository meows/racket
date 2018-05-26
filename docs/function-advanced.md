---
id: function-advanced
sidebar_label: Advanced Functions
title: Advanced Functions
hide_title: true
---

# Advanced Function Notation

> WIP: Do not use yet.

We're about to explore some advanced ways of writing functions, but before we do
that, let's briefly review what we've learned so far.

## Function Review

### Single Parameter

By now we should be quite familiar with how to define a function which takes in
a single input or _parameter_.

``` clojure
(define (half x) (* 1/2 x))
(define (cube x) (* x x x))

;; if the steps of (half 10) were written out
(half 10)
(* 1/2 10)
5

;; if the steps of (cube 10) were written out
(cube 10)
(* 10 10 10)
(* 100 10)
1000

```

### Multiple Parameters

We should also be familiar with defining functions that take in multiple inputs
or _parameters_, such as the `prism-volume` function below, which can find the
volume of any 3-dimensional rectangular prism given length `l`, width `w`, and
height `h`:

``` clojure
(define (prism-volume l w h)
        (* l w h))

;; if the steps of (prism-volume 10) were written out
(prism-volume 3 5 7)
(* 3 5 7)
(* 15 7)
105
```

Which we know to be a shorthand for either:

``` clojure
(define prism-volume
        (lambda (l w h)
                (* l w h)
))

(define prism-volume
        (λ (l w h)
           (* l w h)
))
```

### Recursion

And we should be familiar with the fact that you're allowed to define part of a
function using itself.

``` racket
(define (factorial n)
        (if (zero? n)
            1
            (* n (factorial (sub1 n)))
))

;; if the steps of (factorial 4) were written out
(factorial 4)
(* 4 (factorial 3))
(* 4 (* 3 (factorial 2)))
(* 4 (* 3 (* 2 (factorial 1))))
(* 4 (* 3 (* 2 1)))
(* 4 (* 3 2))
(* 4 6)
24
```

## Default Parameters

A default parameter provides an input if you don't provide one.

``` racket
(define (factorial n [result 1])
        (if (zero? n)
            result
            (factorial (sub1 n) 
                       (* n result))
))

;; if the steps of (factorial 4) were written out
(factorial 4 1)
(factorial 3 4)
(factorial 2 12)
(factorial 1 24)
(factorial 0 24)
24
```

## Named Parameters

``` racket
(define (factorial n #:result [p 1])
        (if (zero? n)
            p
            (factorial (sub1 n) #:result (* n p))
))

;; if the steps of (factorial 4) were written out
(factorial 4 #:result 1)
(factorial 3 #:result (* 3 4))
(factorial 2 #:result (* 2 12))
(factorial 1 #:result (* 1 24))
(factorial 0 #:result 24)
24
```
