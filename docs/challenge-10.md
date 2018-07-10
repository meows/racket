---
id: challenge-10
sidebar_label: Challenge #10
title: Challenge #10
hide_title: true
---

# Racket Challenge #10

> Time to use the [`fib`](challenge-9.md) function you wrote from the previous
> challenge.

## Description

n   | fib
--- | ---
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

According to the table above, here's the sum of all odd Fibonacci numbers whose
values don't exceed 30:

``` clojure
(+ 1 1 3 5 13 21) ;; → 44
```

## Problem

Find the sum of all even Fibonacci numbers whose values don't exceed 4 million.

## Hint

This is but one way to approach the problem.

``` clojure
;; finds the nth triangle number based on n
(define (triangle n)
    (if (zero? n)
        0
        (+ n (triangle (- n 1))))
)

(define (odd-or-0 n)
    (if (odd? n) n 0)
)

;; finds the sum of all odd triangle numbers from n to 99
(define (challenge n sum)
    (if (< 100 (triangle n)) ;; check if the current triangle number is over 100
        sum
        (challenge (+ n 1)
                   (+ sum (odd-or-0 (triangle n)))))
)

(challenge 0 0) ;; → 231
```

* [`even?`](https://docs.racket-lang.org/reference/number-types.html#%28def._%28%28quote._~23~25kernel%29._even~3f%29%29)
* [recursion](recursion.md)
