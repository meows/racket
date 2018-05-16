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
or rule to define itself.

This definition might confuse some, so it may be easier to dive straight into an
example, but in order to do so, we must first read a little bit about the
_factorial_, a function that happens to have an interesting repeating pattern
which we can exploit with recursion.

## Factorial `!`

The `factorial` is a function which operates on a natural number `n` to give you
the product of all _positive_ naturals less than or equal to `n`, and it looks
like `!`.

* `4!` means `4 * 3 * 2 * 1`, which equals `24`.
* `5!` means `5 * 4 * 3 * 2 * 1`, which equals `120`. 
* `6!` means `6 * 5 * 4 * 3 * 2 * 1`, which equals `720`. 

Here are a few more examples to get familiar with:

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

One thing you might've noticed in the above table is that to get from one result
to the next, you just multiply by the current result with the next `n`. For 
example, if we look at row 9's result number, `362,880`, and we multiply it by 
the next `n`, which is `10`, then we get `3,628,800`. In other words,
`10! = 10 * 9!`.

The `factorial` function can be defined in just two simple rules, assuming `n` 
is a natural number:

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

Assume that our `factorial` function will receive a natural number `n` for input:
* If `n` is zero, then we return `1`
* If `n` is anything else, then we return `(* n (factorial (- n 1)))`

``` clojure
;; Example #1
(define (factorial n)
        (if (zero? n)
            1
            (* n (factorial (- n 1)))
))
```

If the "steps" for `(factorial 5)` were written out:

``` clojure
(factorial 5)
(* 5 (factorial 4))
(* 5 (* 4 (factorial 3)))
(* 5 (* 4 (* 3 (factorial 2))))
(* 5 (* 4 (* 3 (* 2 (factorial 1)))))
(* 5 (* 4 (* 3 (* 2 (* 1 1)))))
(* 5 (* 4 (* 3 (* 2 1))))
(* 5 (* 4 (* 3 2)))
(* 5 (* 4 6))
(* 5 24)
120
```

### Observations

Notice in the above example how many "steps" it takes to get to the answer.
This is one major way that computer scientists and engineers count the
computational "cost" of any strategy, program, or function you use to solve a 
problem -- by reducing or simplifying the problem down to a matter of counting
steps.

If we don't count the very first line of `(factorial 5)`, we should arrive to
the count of 10 lines. Also, how many more lines would we add if we evaluated 
`(factorial 6)` instead? How about `(factorial 7)`?

> DrRacket has a tool to let you walk through each step of the evaluation of an
> expression. The tool is located under a button called `debug`, and when you
> are there, you can click `Step` to repeatedly to walk through each step of
> evaluation.

## One more try at factorials

Below we have a very similar `factorial` function from the one above, except
that now it takes two inputs, `n` and `p`. Also notice that `p` is surrounded by
square brackets and paired with `1`. This is called a default input, and just
means that whenever you don't give anything for `p`, then `1` will be secretly
given to your function in place of `p`.

``` clojure
;; Example #2
(define (factorial n [p 1])
        (if (zero? n)
            p
            (factorial (- n 1) (* n p))
))
```

If the "steps" for `(factorial 5)` were written out:

``` clojure
(factorial 5 1) ; 1 is given as a default input
(factorial 4 5)
(factorial 3 20)
(factorial 2 60)
(factorial 1 120)
120
```

### Observations

If we don't count the very first line, we should find that `(factorial 5)` runs
for five times before finding the answer. How many more lines would we add if we 
evaluated `(factorial 6)` instead? How about `(factorial 7)`?

Also, do you notice how the shape of Example #1 looks like a sideways pyramid 
pointing to our right, while the shape of Example #2 looks like a straight line?
If you evaluated a large input like `(factorial 100)`, do you expect the shape
to change for either example?

## A little aside about `0!`

Of all the examples of factorials, the one that is probably most remarkable to
you is `0!`. Why might that equal `1`? For now I'm going to give you a rough
intuitive reason. One way of thinking about it is that for addition, a way to do 
nothing is to add by zero, and that for multiplication, a way to do nothing is 
to multiply by one.

So if the factorial function is capable of multiplying your natural number `n`
with all the _positive_ naturals equal to or lesser than `n`, and you chose `0`,
then in a way that's like saying you want `(*)`.

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

## Review

* What is recursion?
* Define the factorial function on the natural numbers `n` using only two rules.
* Why might `10!` be the same as `10 * 9!`?
* What is `10!` divided by `10`?
* What is `10!` divided by `9!`?
* What is the factorial of `0`?  What's a rough reason why `0!` is `1` and not `0`?
* What is one way that computer scientists measure the cost of your function?
