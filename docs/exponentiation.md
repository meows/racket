---
id: exponentiation
sidebar_label: Exponentiation
title: Exponentiation
hide_title: true
---

# Exponentiation

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

### Observations

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

If these a 3-list of `(base exponent power)`, when will we reach at least `$30`?
Trying this manually by hand is very slow, so how might the log function help us
find the answer?

``` clojure
(1.05 0 1)
(1.05 1 1.05)
(1.05 2 1.1025)
(1.05 3 1.157625)
(1.05 4 1.21550625)
(1.05 5 1.2762815625)
(1.05 6 1.340095640625)
```

Since we're going to multiply our `(expt rate weeks)` term by the initial value 
of `$10`, the `power` that we require to scale `$10` to `$30` would be about 
`3`. So we want to know what exponent to the base `1.05` could possibly result
in a power of `3`.
