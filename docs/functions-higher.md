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

``` scheme
(define (add amount)
   (λ (x)
      (+ x amount)
   )
)

(define (scale amount)
   (λ (x)
      (* x amount)
   )
)

;; using our new function
((add   5) 5)             ;; → 10
((scale 5) 5)             ;; → 25
((add   5) ((add 4)   3)) ;; → 12
((scale 5) ((scale 4) 3)) ;; → 60
((scale 4) ((add 3)   2)) ;; → 20

(map (add 3)    (range 6)) ;; → '(3 4 5 6 7 8)
(map (scale -1) (range 6)) ;; → '(0 -1 -2 -3 -4 -5)
```