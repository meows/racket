---
id: sequence-geometric-1
title: Geometric Series
hide_title: true
sidebar_label: Geometric Series
---

> WIP: Don't use yet.

# Geometric Series

We have previously tackled sequences such as:

 * `1, 2, 4, 8, 16, 32, 64...`
 * `2, 4, 8, 16, 32, 64, 128...`
 * `4, 12, 36, 108, 324, 972, 2916...`

These sequences are called geometric sequences, and they can be identified by
the common ratio from one sequence item to the next. A function for any 
geometric sequence can be defined by the value of the starting position and the 
common ratio consecutive values.

``` clojure
(define (geometric start ratio)
   (λ (n) 
      (* start (expt ratio n))))

(map (geometric 1 2) (range 7)) ;; → '(1  2  4   8  16  32   64)
(map (geometric 2 2) (range 7)) ;; → '(2  4  8  16  32  64  128)
(map (geometric 4 3) (range 7)) ;; → '(4 12 36 108 324 972 2916)
```

But how might we find the sum of a geometric series?

``` clojure
(define (geometric-sum initial ratio terms)
   (* initial 
      (/ (- 1 (expt ratio terms)) 
         (- 1 r))))

(define (geometric-sum initial ratio terms)
   (* initial 
      (+ (expt ratio terms) -1) 
      (/ 1 (- 1 r))))
```
