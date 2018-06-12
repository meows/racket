---
id: challenge-9
sidebar_label: Challenge #9
title: Challenge #9
hide_title: true
---

# Challenge 9

The Collatz Conjecture is a very interesting, old, and still unproven belief in
mathematics. The Collatz function takes a natural number `n`, and checks if `n` 
is even or odd. If it's even, you divide `n` by `2`. If it's odd, you triple `n` 
and add `1`.

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
