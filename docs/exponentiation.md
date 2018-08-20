---
id: exponentiation
sidebar_label: Exponentiation
title: Exponentiation
hide_title: true
---

# Geometric Sequences

We have previously defined exponentiation as a way of repeated multiplication.
For example:

``` clojure
(*)       ;; 2^0 → 1
(* 2)     ;; 2^1 → 2
(* 2 2)   ;; 2^2 → 4
(* 2 2 2) ;; 2^3 → 8
```

For whole numbers this may be a fine definition. But that points to a question 
of what do we do when we see:

``` clojure
(expt 4 1/2)
```

To answer this, I'll write exponents a different way, as a list of three numbers:

``` clojure
(2 0 1)
(2 1 2)
(2 2 4)
(2 3 8)
(2 4 16)
(2 5 32)
```

We can imagine that the exponentiation operator is like asking for the final
value of this length-3 list:

``` clojure
(2 0 _)
(2 1 _)
(2 2 _)
(2 3 _)
(2 4 _)
(2 5 _)

(expt 2 0)
(expt 2 1)
(expt 2 2)
(expt 2 3)
(expt 2 4)
(expt 2 5)
```

The logarithm operator is for asking for the middle value:

``` clojure
(2 _ 1)
(2 _ 2)
(2 _ 4)
(2 _ 8)
(2 _ 16)
(2 _ 32)

;; the racket logarithm function takes the base as the 2nd input
(log 0 2)
(log 1 2)
(log 2 2)
(log 3 2)
(log 4 2)
(log 5 2)
```

## A Sample Problem

Let's revisit an old word problem. 

Bob is given an initial weekly allowance of `$10`, which is to increase by `5%` 
for every week he successfully completes his chores. After the first week, Bob 
expects the allowance for the following week to be `10 * 1.05`, or `$10.50`.

After how many weeks would Bob have to wait to expect an allowance of at least
`$30`?

### Solving with `log`

``` clojure
(define initial 10) ;; unit dollars
(define rate 21/20) ;; percentage as a rational

;; weeks → allowance in dollars
(define (weeks->dollars weeks)
   (* initial 
      (expt rate weeks)))

(weeks->dollars 0) ;; → 10
(weeks->dollars 1) ;; → 10.5
(weeks->dollars 2) ;; → 9261/800 → 11.57625
```

Since we're going to multiply the `(expt rate weeks)` term by the initial value 
of `$10`, the `power` that we require to scale our initial `$10` to `$30` would 
be about `3`.

If these are 3-lists of `(base exponent power)`, when will we reach at least 
`3`? Trying this manually by hand is very slow, so how might the `log` function 
help us find the answer?

``` clojure
(1.05 0 1)
(1.05 1 1.05)
(1.05 2 1.1025)
(1.05 3 1.157625)
(1.05 4 1.21550625)
(1.05 5 1.2762815625)
(1.05 6 1.340095640625)
```

We can simply look for a power of `3` when the base is `1.05`:

``` clojure
(log 3 1.05)        ;; → 22.517
(weeks->dollars 23) ;; → 30.715
```

Since our allowance is only raised weekly, and not inbetween, we simply round up
to the next week to get `23` weeks. The allowance after `23` weeks should be 
about `$30.715`.

But (!). Let's not ignore the fact that we rounded up. When you perform

``` clojure
(map weeks->dollars (range 20))
```

you'll find a large list of values inbetween the whole numbered weeks. Are the
numbers inbetween meaningless? For the shallow coincidence of our word problem, 
yes, because the word problem states we get paid weekly and not in days or 
seconds inbetween.

But most of real life does happen in the "days and seconds" inbetween. If you
were taking daily measurements on the growth of a bacteria colony, perhaps you
notice a pattern which is well described by a function for a geometric sequence.

It would be silly to imagine that the bacteria simply stop growing inbetween the
24 hour periods of measurement, and as soon as you step into the door to 
measure, they do all their growth in that instant. Much of everyday life works 
"gradually".

## Another Problem

Observe the sequence below:

`1, 2, 4, 8, 16, 32, 64...`

...which would appear to be a sequence of _the powers of 2_. If you wanted to
find the _nth_ number of the sequence, then the function would look like
`f(n) = 1 * 2^n` where `^` means exponentiation, or:

``` clojure
(define (power-2 n)
   (* 1 (expt 2 n)))

(map power-2 (range 6)) ;; → '(1 2 4 8 16 32)
```

Now let's evaluate how to think about a similar sequence:

`2, 4, 8, 16, 32, 64...`

This sequence is exactly like the powers of _powers of 2_ listed above, except
now the initial number starts with `2`, so the function should look like
`f(n) = 2 * 2^n`, or :

``` scheme
(define (geometric initial ratio)
   (λ (cycles) 
      (* initial
         (expt ratio cycles))))

(map (geometric 1 2) (range 8)) ;; → '(1 2 4 8 16 32 64 128)
(map (geometric 2 2) (range 8)) ;; → '(2 4 8 16 32 64 128 256)
(map (geometric 4 2) (range 8)) ;; → '(4 8 16 32 64 128 256 512)
```

### One more observation.

Whenever you identify that you only need a subsequence, such as this case where
we know we're one off in the positive direction, then we could similarly find:
`f(n) = 2^(n + 1)`. But this is the same as `f(n) = 2^n * 2^1`.
