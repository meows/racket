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
mathematician named after Leonard Fibonacci, and it looks like:

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

The function `fib` takes a natural number `n` and tells you the `n`-_th_ 
Fibonacci number. It can be mathematically defined using 3 simple rules:

  1. `fib(0) = 0`
  2. `fib(1) = 1`
  3. `fib(n) = fib(n-1) + fib(n-2)`

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

``` racket
(define (fib n)
    (cond [(= n 0) 0]  ;; if n is zero, then return 0
          [...]        ;; write more conditions
    )
)
```

## Fibonacci in Nature

The Fibonacci series is one of the simplest recursive sequences that one can
think of, but it often surprises scientists by finding its way into nature in
all sorts of places.

One possible reason we find Fibonacci in nature is if you're a plant or animal 
part that wants to have this shape which efficiently turns upon itself, and 
you're trying to figure out how big the next part should be...

![fib-geometry](https://upload.wikimedia.org/wikipedia/commons/thumb/2/2e/FibonacciSpiral.svg/640px-FibonacciSpiral.svg.png)

![nautilus-shell](https://upload.wikimedia.org/wikipedia/commons/0/08/NautilusCutawayLogarithmicSpiral.jpg)
