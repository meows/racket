---
id: geometric-0
title: Geometric Sequences
hide_title: true
sidebar_label: Geometric Sequences
---

# Geometric Sequences

> WIP: Don't use yet!

Recall that a [sequence](sequence.md) is a bunch of "things" in order, one after 
another, which can be counted by the natural numbers.

We have seen sequences before like these:

  * `0, 1, 2, 3, 4, 5...`
  * `2, 3, 4, 5, 6, 7...`
  * `0, 2, 4, 6, 8, 10...`
  * `10, 20, 30, 40, 50, 60...`
  * `30, 20, 10, 0, -10, -20...`

These sequence all have something in common in that their *velocity* never 
changes. We call these *linear* sequences because if we were to graph these
points and connect them, they would look like a straight line.

Linear sequences can be defined by:

`f(x) = a*x + b`

Where `f` is the function that can give the sequence, `x` is the natural input
that we expect, `a` controls the velocity, and `b` controls the starting 
position of the sequence.

We have also seen sequences like:

  * `0, 1, 3, 6, 10, 15, 21...`
  * `0, 1, 4, 9, 16, 25, 36...`
  * `0, 1, 8, 27, 64, 125, 216...`

What these sequences have in common is that their velocity changes. Fortunately,
their velocity changes in a very stable way, which we discover by finding the
delta of a sequence.

  * `1, 2, 3, 4, 5, 6...`
  * `1, 3, 5, 7, 9, 11...`
  * `1, 7, 19, 37, 61, 91...`
  * `6, 12, 18, 30, 36, 42...`

## A difficult sequence to delta

  * `S: 4, 8, 16, 32, 64, 128...`
  * `Δ(S): 4, 8, 16, 32, 64, 128...`
  * `Δ(Δ(S)): 4, 8, 16, 32, 64, 128...`

This sequence is curious in that an attempt to delta it would produce another
identical sequence, making the technique useless! If that's true, is there
another easy pattern we might be able to take advantage of?

If we look carefully, we can see that except for the first item, every member in
this sequence is the double of the previous number.

  * `f(0) = 4`
  * `f(n) = f(n - 1) * 2`

For any function `f` which generates a geometric sequence, we need only two 
pieces of information to determine the value at any point of the sequence, 
(1) an initial value `a` and (2) the common ratio `r`:

`f(n) = a * r^n`

> Assume that `^` means the exponentiation operator.

## Sample Word Problem

Bob heard that if he invested his money into some kind of investment account,
then the amount of money in his account would grow by 3% anually. Bob is 
thinking of investing `$10,000`. Assuming that Bob doesn't disturb his account 
after his initial investment:

``` clojure
(define ($ years)
   (* 10000 
      (expt 1.03 years)))
```

**Q:** How much money (to the nearest cent) will the account have in 20 years?

``` clojure
($ 20) ; → $18,061.11
```

**Q:** How many years will it take for Bob to at least double his investment?

``` clojure
; We're asking how long it will take for f(n) = 1.03^n to reach f(n) = 2.
(log 2 1.03) ; → 23.44977 -- at least 24 years
```

**Q:** If Bob had invested `$20,000` instead as his initial investment, would that
change the amount of time it takes for his money to double?

``` clojure
; It takes the same number of cycles to grow 1.03 into 2.
(log 2 1.03) ; → 23.44977 -- at least 24 years
```
