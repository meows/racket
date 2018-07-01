---
id: fold
sidebar_label: fold
title: fold
hide_title: true
---

# `for/fold`

> WIP: Don't use.

`for/fold` is one of the hardest but most powerful functions there are over
sequences, so I'm going to show you examples first:

``` scheme
;; adds all the numbers from 0 to 10
(for/fold ([sum 0])        ;; the current sum
          ([n (range 11)]) ;; the sequence you are running over
          (+ sum n)        ;; the next sum
)
```

``` scheme
(define (factorial n)
    (for/fold ([product 1])            ;; current product
              ([i (range 1 (add1 n))]) ;; the sequence you are running over
              (* product i)            ;; the new product
))
```

``` scheme
(define (triangle n)
    (for/fold ([sum 0])              ;; current sum
              ([i (range (add1 n))]) ;; the sequence you are running over
              (+ sum i)              ;; the new sum
))
```

In all of these examples `for/fold` always takes in 3 inputs:
  1. a name-value pair such as `[sum 0]` or `[product 1]`,
  2. a sequences you want to "run" over,
  3. the expression that will become the next value for your name-value pair.

## Why use `for/fold`?

`for/fold` is a tool for doing just about anything you want to a sequence. Lists
are sequential, strings are sequential, and you'll learn about more sequential
things later on.

`for/fold` is so flexible that if you wanted, you could replicate the power of
`map` or `filter`.

``` scheme
(define (myMap fn seq)
    (for/fold ([lst (list)])    ;; current list
              ([i seq])         ;; the sequence we're running over
              (cons (fn i) lst) ;; the new list
))

(define (myFilter okay? seq)
    (for/fold ([lst (list)])   ;; current list
              ([i seq])        ;; the sequence we're running over
              (if (okay? i)    ;; we check if every (okay? i) is true or false
                  (cons i lst) ;; the new list if true
                  lst          ;; the old list if false (do nothing)
)))
```
