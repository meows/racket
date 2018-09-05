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

It would appear that we're always increasing but also rapidly slowing down. If 
we took the delta of the first 10 numbers of `e(n)`:

n | e(n)         | Δ          
- | ------------ | ------------
0 | 2            | 0.25        
1 | 2.25         | 0.1203703704
2 | 2.3703703704 | 0.0710358796
3 | 2.44140625   | 0.04691375  
4 | 2.48832      | 0.0333063717
5 | 2.5216263717 | 0.0248733253
6 | 2.546499697  | 0.0192848169
7 | 2.565784514  | 0.0153902778
8 | 2.5811747917 | 0.0125676684
9 | 2.5937424601 | 0.0104565518

We can see that as `e(n)` gets bigger, the difference from one number to the
next gets smaller, which confirms our intuition. A natural question to ask is
whether the velocity of the series ever reaches `0`. 

Let's look at what happens when values for `e(n)` get very large: 

``` clojure
(e 10000)   ;; → 2.7181459268 
(e 20000)   ;; → 2.7182138745
(e 30000)   ;; → 2.7182365251
(e 40000)   ;; → 2.7182478507
(e 50000)   ;; → 2.7182546461
(e 60000)   ;; → 2.7182591765
(e 70000)   ;; → 2.7182624124
(e 80000)   ;; → 2.7182648394
(e 90000)   ;; → 2.7182667270
(e 100000)  ;; → 2.7182682372
(e 1000000) ;; → 2.7182804693
```

It would appear that for very large `n`, the function `e(n)` gets closer and
closer to a number around `2.7182`, except the written representation of the 
number goes on forever because like `π`, it is an irrational real number.
