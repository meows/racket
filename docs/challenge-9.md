---
id: challenge-9
sidebar_label: Challenge #9
title: Challenge #9
hide_title: true
---

# Challenge 9

> WIP: Don't use.

The Collatz Conjecture is a very interesting, old, and still unproven belief in
mathematics. It's the idea that if you take any natural number `n`, and you
check if `n` is even or odd.

If it's even, you divide `n` by `2`. If it's odd, you triple `n` and add `1`.
The strongly educated belief, or _conjecture_, is that if you keep doing this,
all numbers will eventually reach `1`.

``` clojure
(fn (collatz [n 0] #:count [c 0])
    (cond [(one? n) c]
          [(even? n) (collatz (* 1/2 n) #:count (++ c))]
          [else (collatz (+ 1 (* 3 n)) #:count (++ c))]
    )
)
```
