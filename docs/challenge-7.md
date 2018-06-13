---
id: challenge-7
sidebar_label: Challenge #7
title: Challenge #7
hide_title: true
---

# Greatest Common Divisor

## Description

The _greatest common divisor_ of two integers finds the greatest divisor (or
factor) which is shared among them. For example,

* The factors to `12` are `{ 1, 2, 3, 4, 6, 12 }`.
* The factors to `8` are `{ 1, 2, 4, 8 }`.
* Therefore `gcd(8, 12)` will equal `4`, because that's the biggest shared factor.

Impressively, one of the most efficient ways to solve this problem was devised
by a Greek mathematician who lived around 400 to 300 BC, named Euclid
(or Eukleides) of Alexandria, in a famous text known as the _The Elements_.

Euclid's algorithm, as it has come to be known, describes a function
`gcd(n1, n2)` which consumes two naturals `n1` and `n2` as inputs, and returns
their greatest common divisor by using the following two rules:

1. If `gcd(n1, 0) = n1`
2. Otherwise, return `gcd(n2, n1 % n2)`

> Assume that % is the [`remainder`](arithmetic-advanced.md) operator, which 
> gives you the remainder after the division of two numbers.

## Problem

Given these rules, write a similar recursive function in Racket named `gcd`
which expects two natural inputs, `n1` and `n2`:

1. If `n2` equals `0`, then return `n1`
2. Otherwise, return `(gcd n2 (remainder n1 n2))`

``` clojure
(define (gcd n1 n2)
        (...)
)
```

## Extra

The _least common multiple_ of two integers `a` and `b` is the smallest positive
natural which is divisible by both `a` and `b`. The least common multiple of two
integers `a` and `b` is the absolute value of `a * b` divided by the 
`gcd(a, b)`:

![Mathematical formula for Least Common Multiple.](/img/lcm-0.svg)

If [`abs`](arithmetic-advanced.md) is the function for absolute value in Racket, 
define the `lcm` function below, assuming that `n1` and `n2` will be natural 
inputs.

``` clojure
(define (lcm n1 n2)
        (...)
)
```
