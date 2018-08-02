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
