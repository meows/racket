---
id: challenge-5
sidebar_label: Challenge #5
title: Challenge #5
hide_title: true
---

# Racket Challenge #5

The _sum of the squares_ of the naturals `1..5` is:

``` clojure
(+ (sqr 1) (sqr 2) (sqr 3) (sqr 4) (sqr 5))
```

The _square of the sum_ of the naturals `1..5` is:

``` clojure
(sqr (+ 1 2 3 4 5))
```

## Problem

Define the values `sum-of-squares` and `square-of-sum` for the naturals
`1..100`, and then find the difference between `sum-of-squares` and
`square-of-sum`.

``` clojure
(define sum-of-squares ...)
(define square-of-sum ...)
```

## Possible Clues

* [`map`](function-sequence.md)
* [`apply`](function-sequence.md)
* `sqr`
* [`expt`](arithmetic-advanced.md)
* [`range`](function-sequence.md)
