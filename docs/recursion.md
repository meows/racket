---
id: recursion
sidebar_label: Recursion
hide_title: true
---

# Recursion

> WIP: Do not use yet.

Recursion is when you use a function to define itself.

## Factorial `!`

The factorial operator is written like `!`, and when used on a number like `5!`,
it means `5 * 4 * 3 * 2 * 1`, which happens to equal `120`. Here are a few more
examples to get familiar with:

input | function | result
----- | -------- | ------
0     | !        | 1
1     | !        | 1
2     | !        | 2
3     | !        | 6
4     | !        | 24
5     | !        | 120
6     | !        | 720
7     | !        | 5040
8     | !        | 40,320
9     | !        | 362,880
10    | !        | 3,628,800

One thing you might've noticed in the above table is that the results of any row
equals the previous row result multiplied by the current input number. For
example, observe that `10!` is the same as `10 * 9!`. You can also check whether
`9!` is the same as `9 * 8!`, and whether this pattern repeats everywhere.

### Writing our own factorial

* `factorial` takes for input a natural number `n`
* if `n` is zero, we get back `1`
* if `n` is anything else we give back `factorial` with `n - 1`

``` clojure
(define (factorial n)
        (if (zero? n)
            1
            (* n (factorial (sub1 n)))
))

; if the steps for (factorial 5) were written out:
(factorial 5)
(* 5 (factorial 4))
(* 5 (* 4 (factorial 3)))
(* 5 (* 4 (* 3 (factorial 2))))
(* 5 (* 4 (* 3 (* 2 (factorial 1)))))
(* 5 (* 4 (* 3 (* 2 (* 1 (factorial 0))))))
(* 5 (* 4 (* 3 (* 2 (* 1 1)))))
(* 5 (* 4 (* 3 (* 2 1))))
(* 5 (* 4 (* 3 2)))
(* 5 (* 4 6))
(* 5 24)
120
```

> DrRacket has a tool to let you walk through each step of the evaluation of an
> expression. The tool is located under a button called `debug`, and when you
> are there, you can click `Step` to repeatedly to walk through each step of
> evaluation.

### A little aside about `0!`

Of all the examples of factorials, the one that is probably most remarkable to
you is `0!`. Why might that equal `1`? One way of thinking about it is that for
addition, a way to do nothing is to add by zero, and that for multiplication,
a way to do nothing is to multiply by one.

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
