---
id: challenge-13
sidebar_label: Challenge #13
title: Challenge #13
hide_title: true
---

# Challenge 13

Write a function called `digits` which consumes a natural input `n` and returns
a list of the digits of `n`.

For example, `(natural->digits 1320)` should return the list `'(1 3 2 0)`.

```
(define (natural->digits n [digits '()])
   (...)
)
```

## Clue

* `cons`
* [`quotient`](arithmetic-advanced.md)
* [`remainder`](arithmetic-advanced.md)
