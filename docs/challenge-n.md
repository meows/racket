---
id: challenge-n
sidebar_label: Challenge #n
title: Challenge #n
hide_title: true
---

# Challenge 9

The Collatz Conjecture is a very interesting, old, and still unproven belief in
mathematics. The Collatz function takes a natural number `n`, and checks if `n` 
is even or odd. If it's even, you divide `n` by `2`. If it's odd, you triple `n` 
and add `1`.

The strongly educated belief, or _conjecture_, is that if you keep doing this,
all numbers will eventually reach `1`.

## Problem

This `collatz` function below takes two inputs, `n` and `count`, but `count` has
a default input of `0`. The `collatz` of `n` should tell you how many steps it
takes to get to 0.

``` clojure
(define (collatz n [count 0])
    (...)
)
```

## Possible Clues

* [`cond`](cond.md)
* [`even?`](https://docs.racket-lang.org/reference/number-types.html#%28def._%28%28quote._~23~25kernel%29._even~3f%29%29)
