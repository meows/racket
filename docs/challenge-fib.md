---
id: challenge-n
sidebar_label: Challenge #9
title: Challenge #9
hide_title: true
---

# Fibonacci

The Fibonacci sequence looks like this:

`0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144...`

The next number of any Fibonacci number can be found by adding up the previous
two numbers.

n  | fibonacci
-------
0  | 0
1  | 1
2  | 1
3  | 2
4  | 3
5  | 5
6  | 8
7  | 13
8  | 21
9  | 34
10 | 55

``` clojure
(fn (fibonacci n)
    (cond [(zero? n) n]
          [(one?  n) n]
          [else (+ (fibonacci (- n 1)) 
                   (fibonacci (- n 2)))]
))
```
