---
id: challenge-6
sidebar_label: Challenge #6
title: Challenge #6
hide_title: true
---

# Greatest Common Divisor

The _greatest common divisor_ of two integers finds the greatest divisor (or
factor) which is shared among them. For example,

* The factors to `12` are `{ 1, 2, 3, 4, 6, 12 }`.
* The factors to `8` are `{ 1, 2, 4, 8 }`.
* The `gcd(8, 12)` will equal `4`.

Impressively, one of the most efficient ways to solve this problem was devised 
by a Greek mathematician who lived around 400 to 300 BC, named Euclid 
(or Eukleides) of Alexandria, in a historically acclaimed text called _The Elements_.

Euclid's algorithm, as it has come to be known, describes a function 
`gcd(n1, n2)` which consumes two integers `n1` and `n2` as inputs, and returns 
their greatest common divisor with the following two rules:

1. If `n2` equals `0`, return `n1`
2. Otherwise, return `gcd(n2, n1 % n2)`

Given these rules, write a similar recursive function in Racket named `gcd`
which expects two integer inputs, `n1` and `n2`:

``` clojure
(define (gcd n1 n2)
        (code goes here)
)
```
