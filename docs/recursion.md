---
id: recursion
sidebar_label: Recursion
hide_title: true
---

# Recursion

> WIP: Do not use yet.

## Factorial `!`

The factorial operator is written like `!`, and when used on a number like `5!`,
it means `5 * 4 * 3 * 2 * 1`, which happens to equal `120`. Here are a few more
examples to get familiar with:

row    | term | result
------ | ---- | ------
0      |  0!  | 1
1      |  1!  | 1
2      |  2!  | 2
3      |  3!  | 6
4      |  4!  | 24
5      |  5!  | 120
6      |  6!  | 720
7      |  7!  | 5040
8      |  8!  | 40,320
9      |  9!  | 362,880
10     | 10!  | 3,628,800

One thing you might've noticed in the above table is that the results of any row
equals the previous row result multiplied by the current row number. For
example, look at the difference between `9!` and `10!`, which differs by `10`.
This pattern is in every row except for the 0th row.

### Writing our own factorial

``` clojure
(define (factorial n [result 1])
        (if (= n 0) 
            result
            (factorial (- n 1) (* n result))
))

; if the steps for (factorial 4) were written out:
(* (factorial 4) 1)  ; the first 1 is the default input of result
(* (factorial 3) 4 1)
(* (factorial 2) 3 4 1)
(* (factorial 1) 2 3 4 1)
(* (factorial 0) 1 2 3 4 1)
```

### A little aside about `0!`

Of all the examples of factorials, the one that is probably most remarkable to
you is `0!`. Why might that equal `1`? One way of thinking about it is that for
addition, a way to do nothing is to add by zero, and that for multiplication,
a way to do nothing is to multiply by one.

And since the factorial is kind of defined by the repeated multiplication

``` clojure
(+)         ;; →  0
(*)         ;; →  1
(+ (+))     ;; →  0
(* (*))     ;; →  1
(+ (+) 5)   ;; →  5
(* (*) 5)   ;; →  5
(+ (+) 5 5) ;; → 10
(* (*) 5 5) ;; → 25
```
