---
id: logarithm-natural
sidebar_label: Natural Log
title: Natural Log
hide_title: true
---

> WIP: Don't use!

# A Special Logarithm

Let's observe this very curious function below, which can be mathematically
expressed as

`e(n) = (1 + (1 / n)) ^ n`, and in Racket it looks like:

``` clojure
(define (e n)
    (expt (+ 1 (/ 1 n)) n))
```

Let's look at some outputs of `e` and see if we can formulate any predictions
about future values:

``` clojure
(e 1)   ;; → 2
(e 2)   ;; → 2.25
(e 3)   ;; → 2.370370370
(e 4)   ;; → 2.44140625
(e 5)   ;; → 2.48832
(e 10)  ;; → 2.5937424601
(e 100) ;; → 2.70481382942
```

It would appear that we're getting closer and closer to a number. If we took the
delta of the first 10 numbers of `e(n)`:

n | e(n)         | Δ
- | ------------ | ------------
0 | 2.0000000000 | 0.2500000000
1 | 2.2500000000 | 0.1203703704
2 | 2.3703703704 | 0.0710358796
3 | 2.4414062500 | 0.0469137500
4 | 2.4883200000 | 0.0333063717
5 | 2.5216263717 | 0.0248733253
6 | 2.5464996970 | 0.0192848169
7 | 2.5657845140 | 0.0153902778
8 | 2.5811747917 | 0.0125676684
9 | 2.5937424601 | 0.0104565518

We can see that as `e(n)` gets bigger, the difference from one number to the
next gets smaller. How about if the values for `e` get very large?

``` clojure
(e 100)    ;; → 2.70481382942
(e 200)    ;; → 2.7115122929
(e 300)    ;; → 2.71376515794
(e 1000)   ;; → 2.71692393223
(e 10000)  ;; → 2.7181459268
(e 20000)  ;; → 2.718213874527
(e 50000)  ;; → 2.718254641391
(e 100000) ;; → 2.718268237174
(e 200000) ;; → 2.718275032785
```
