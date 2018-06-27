---
id: challenge-9
sidebar_label: Challenge #9
title: Challenge #9
hide_title: true
---


# Racket Challenge #9

> You might want to review [`cond`](cond.md) before going on.

## The Fibonacci Sequence

The Fibonacci sequence is a well known series of numbers named after an Italian
mathematician nammed Leonard Fibonacci, and it looks like:

`0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144...`

n   | fib
--- | ---------
0   | 0
1   | 1
2   | 1
3   | 2
4   | 3
5   | 5
6   | 8
7   | 13
8   | 21
9   | 34
10  | 55

It's a famous series of numbers because it has been independently discovered by
many people throughout time, but it also continues to surprise scientists 
because the Fibonacci sequence also finds its way into nature.

The function `fib` which tells you the `n`-th Fibonacci number based on `n` can 
be defined with just three simple rules in math:
  1. `fib(0) = 0`
  2. `fib(1) = 1`
  3. `fib(n) = fib(n - 1) + fib(n - 2)`

Aside from `fib(0)` and `fib(1)`, any Fibonacci number can be found by adding up 
the previous two numbers in the sequence.

For example, if we were to evaluate `fib(4)` in math:
  1. `fib(4) = fib(3) + fib(2)`
  2. `fib(4) = fib(3) + (1 + 0)`
  3. `fib(4) = (fib(2) + 1) + 1`
  4. `fib(4) = (1 + 0 + 1) + 1`
  5. `fib(4) = 3`

## Problem

Write a function in Racket called `fib` which accepts a natural number `n` for 
input, and will return the `n`-th Fibonacci number. For example: 
  * `(fib 6)` should evaluate to `8`
  * `(fib 7)` should evaluate to `13`
  * `(fib 8)` should evaluate to `21`

``` scheme
(define (fib n)
    (cond [(= n 0) 0]
          [...]
    )
)
```
