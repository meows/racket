---
id: function-higher
sidebar_label: Making Many Functions
title: Making Many Functions
hide_title: true
---

# Making Many Functions

> WIP: Don't use yet!

We've learned before that a function takes an input and transforms it into an
output. We've also learned that in math, we are required to specify what is the
_type_ of the input and output. As it happens, that's true in programming as 
well.

``` clojure
;; real -> real
(define (prism l w h) (* l w h))

;; list -> list
(define (remove-odds lst) (filter even? lst))
```

## Returning a function

``` racket
(define (up-by amount)
   (λ (x) 
      (+ x amount))
)

(define (scale-by amount)
   (λ (x)
      (* x amount))
)

;; using our new function
((up-by 5) 5) ;; → 10
((up-by 5) ((up-by 4) 3)) ;; → 12
```