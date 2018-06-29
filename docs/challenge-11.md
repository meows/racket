---
id: challenge-11
sidebar_label: Challenge #11
title: Challenge #11
hide_title: true
---

# Challenge 9

The Collatz Conjecture is a very interesting, old, and still unproven belief in
mathematics. The Collatz function takes a natural number `n`, and checks if `n` 
is even or odd. If it's even, you divide `n` by `2`. If it's odd, you triple `n` 
and add `1`.

The strongly educated belief, or _conjecture_, is that if you keep doing this,
all natural inputs to Collatz will eventually reach `1`.

This `collatz` function below takes two inputs, `n` and `count`, but `count` has
a default input of `0`. The `collatz` of `n` should tell you how many steps it
takes to get to `1`.

``` clojure
(define (collatz n [count 0])
    (...)
)
```

## Possible Clues

* [`cond`](cond.md)
* [`even?`](https://docs.racket-lang.org/reference/number-types.html#%28def._%28%28quote._~23~25kernel%29._even~3f%29%29)
