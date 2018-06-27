---
id: challenge-9
sidebar_label: Challenge #9
title: Challenge #9
hide_title: true
---

> You might want to review [`cond`](cond.md) before going on.

# Fibonacci

## Description

The Fibonacci sequence looks like this:

`0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144...`

The next number of any Fibonacci number can be found by adding up the previous
two numbers.

n  | fibonacci
-------
0  | 0
1  | 1
2  | 1
3  | 2
4  | 3
5  | 5
6  | 8
7  | 13
8  | 21
9  | 34
10 | 55

The function `fib` which tells you the `n`-th fibonacci number based on `n` can 
be defined with just three simple rules in math:

1. `fib(0) = 0`
2. `fib(1) = 1`
3. `fib(n) = fib(n - 1) + fib(n - 2)`

## Problem

Write a function in Racket called `fib` which accepts a natural `n` for input, 
and will return the `n`-th Fibonacci number. For example, `(fib 6)` should
evaluate to `8`.

``` clojure
(define (fib n)
    (cond [(zero? n) n]
          [...]
    )
)
```
