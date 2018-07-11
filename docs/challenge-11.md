---
id: challenge-11
sidebar_label: Challenge #11
title: Challenge #11
hide_title: true
---

# Challenge 11

## The Collatz Conjecture

The Collatz Conjecture is a very interesting, old, and still unproven belief in
mathematics. The Collatz function takes a natural input `n` and checks if it's
odd or even. If it's odd, you triple `n` and add `1`. If it's even, you divide
`n` by `2`:

The strongly educated belief, or _conjecture_, is that if you keep doing this,
all natural inputs to Collatz will eventually reach `1`.

## Problem

Since we suspect all any input to the Collatz function to eventually reach `1`,
it would be silly to ask you to simply write the function. So instead, we must
write a version of the Collatz that counts the number of steps it takes to get
to `1`.

This `collatz` function below takes two natural inputs, `n` and `steps`, but 
`steps` has a default input of `0`. Complete the function so that it can tell me
how many steps it takes to reach `1` from any Collatz number.

``` clojure
(define (collatz n [steps 0])
    (cond [(= n 1) steps] ;; return the count if n is 1
          [...]
    )
)
```

For example, if we were to try `(collatz 3)` by hand, we should find it takes
`7` steps, not including the first number:

`3 → 10 → 5 → 16 → 8 → 4 → 2 → 1`

## Possible Clues

* [`cond`](cond.md)
* [`even?`](https://docs.racket-lang.org/reference/number-types.html#%28def._%28%28quote._~23~25kernel%29._even~3f%29%29)
* [recursion](recursion.md)
* [`for/fold`](fold.md) (if we go over it, or if you wish to try learning yourself)
