---
id: recursion
sidebar_label: Recursion
hide_title: true
---

# Recursion

Mathematicians, more than anyone else, love to be lazy (or "elegant") when they 
write. When mathematicians notice a repeating pattern, they like to find a way 
to easily describe this pattern so they don't have to write as much. One 
particular tool they use is called _recursion_, which is the use of a function 
to define itself.

This definition might confuse some, so it may be easier to dive straight into an
example, but in order to do so, we must first read a little bit about the
_factorial_, a function that happens to have an interesting repeating pattern
which we can exploit with recursion.

## Factorial `!`

The factorial is a function which operates on a natural number `n` to give you
the product of all positive naturals less than or equal to `n`, and it looks
like `!`. When used on a number like `5!`, it means `5 * 4 * 3 * 2 * 1`, which 
equals `120`. Here are a few more examples to get familiar with:

n     | function | result
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

One thing you might've noticed in the above table is that the result of any 
current row equals the previous row's result multiplied by the current `n`. For 
example, observe that `10!` is the same as `10 * 9!`. You can also check whether 
`9!` is the same as `9 * 8!`, and whether this pattern repeats everywhere.

Using recursion, we can define the factorial function in just two simple rules, 
assuming `n` is a natural number:

1. The `factorial(0)` is equal to `1`
2. The `factorial(n)` is equal to `n * factorial(n - 1)`

The first rule is simple because it just tells you what `factorial(0)` literally 
is, but the second rule is incredibly elegant because it tells you the factorial 
of any and all other `n`. It's the second rule that we call recursive because it
uses `factorial` to define itself. And in just two rules we have defined the 
`factorial` function for all the natural numbers. Lazy or elegant?

Now that we have explored the mathematical definition of `factorial`, let's see
how it looks when we write it in Racket.

## Writing our own factorial

* `factorial` takes for input a natural number `n`
* if `n` is zero, we get back `1`
* if `n` is anything else we give back `(* n (factorial (- n 1)))`

``` clojure
(define (factorial n)
        (if (zero? n)
            1
            (* n (factorial (- n 1)))
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

## A little aside about `0!`

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
