---
id: function-advanced
sidebar_label: Advanced Functions
title: Advanced Functions
hide_title: true
---

# Advanced Function Notation

We're about to explore some advanced ways of writing functions, but before we do
that, let's briefly review what we've learned so far.

## Function Review

### Single Parameter

By now we should be quite familiar with how to define a function which takes in
a single input or _parameter_.

``` clojure
(define (half x) (* 1/2 x))
(define (cube x) (* x x x))

(half 10) ;; → (* 1/2 10)   → 5
(cube 10) ;; → (* 10 10 10) → 1000
```

### Multiple Parameters

We should also be familiar with defining functions that take in multiple inputs
or _parameters_, such as the `prism-volume` function below, which can find the
volume of any 3-dimensional rectangular prism given length `l`, width `w`, and
height `h`:

``` clojure
(define (prism-volume l w h)
    (* l w h))

(prism-volume 3 5 7) ;; → (* 3 5 7) → 105
```

Which we know to be a shorthand for either:

``` racket
(define prism-volume
    (lambda (l w h) 
            (* l w h)))

(define prism-volume
    (λ (l w h)
       (* l w h)))
```

### Recursion

And we should be familiar with the fact that you're allowed to define part of a
function using itself.

``` racket
(define (factorial n)
    (if (zero? n)
        1
        (* n (factorial (sub1 n)))))

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
        (factorial (sub1 n) (* n result))))

;; if the steps of (factorial 4) were written out
(factorial 4 1)
(factorial 3 4)
(factorial 2 12)
(factorial 1 24)
(factorial 0 24)
24
```

## Rest Parameters

There are times when you don't know how many inputs you want your function to
take. For example, let's say you wanted to create a function called `avg` 
which can find the average of all numbers given to you.

> As a reminder, an average, also sometimes called arithmetic mean, is a value 
> which we can calculate from a list of numbers by finding the sum of the list 
> divided by the length of the list.

Unfortunately, to calculate the mean, we need to know exactly how many numbers
someone plans to give us, and we wouldn't want to force people to always give us
a specific amount of inputs, because that would be too limiting. In other words,
we would like:

``` clojure
(avg 3 2 1 0 -1 -2 -3) ;; → 0 
(avg 3 2 1 0 -1)       ;; → 1
(avg 3 2 1)            ;; → 2
(avg 3)                ;; → 3
(avg 3 4 5)            ;; → 4
(avg 3 4 5 6 7)        ;; → 5
(avg 3 4 5 6 7 8 9)    ;; → 6
```

First I'm going to show you one way to do it, then I'm going to explain how it
works.

``` clojure
(define (avg . numbers)
    (/ (apply + numbers) 
       (length numbers))
)
```

Observe that:

1. We define a function `avg`, but in the area where we normally place 
   parameters we find `. numbers`. What this does is collect all inputs from
   this point forward into a list named `numbers`.

2. We then return the result of dividing the sum of `numbers` by the length of
   `numbers`.
