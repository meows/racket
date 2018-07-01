---
id: function-higher
sidebar_label: Making Many Functions
title: Making Many Functions
hide_title: true
---

# Making Many Functions

We've learned before that a function takes an input and transforms it into an
output. We've also learned that in math, we are required to specify what is the
_type_ of the input and output. As it happens, that's true in programming as
well.

``` clojure
;; number → number
(define (prism l w h) (* l w h))

;; list → list
(define (remove-odds lst) (filter even? lst))
```

## Returning things we already know about

``` clojure
(define (what-do-you-want? type)
    (cond [(equal? type "string") "You wanted a string."]
          [(equal? type "list") '("you" "wanted" "a" "list")]
          [(equal? type "boolean") true]
          [(equal? type "number") 42]
          [else "I don't know what you want."]))

(what-do-you-want? "string")  ;; → "You wanted a string."
(what-do-you-want? "list")    ;; → '("you" "wanted" "a" "list")
(what-do-you-want? "boolean") ;; → true
(what-do-you-want? "number")  ;; → 42
```

## Returning a function

> You may want to review [`lambda`](lambda.md) before going on.

This function `move` takes a natural input `amount` and returns a function.

``` scheme
(define (move amount)
    (λ (x) (+ x amount)))
```

This function `scale` takes a natural input `amount` and returns a function.

``` scheme
(define (scale amount)
    (λ (x) (* x amount)))
```

Let's see how we might use functions `move` and `scale`:

``` clojure
((move  5) 5)             ;; → 10
((scale 5) 5)             ;; → 25
((move  5) ((move  4) 3)) ;; → 12
((scale 5) ((scale 4) 3)) ;; → 60
((scale 5) ((move  4) 3)) ;; → 35

;; keep an eye out for the starting position and velocity of a sequence
(map (move   0) (range 6)) ;; → '( 0  1  2  3  4  5)
(map (scale  0) (range 6)) ;; → '( 0  0  0  0  0  0)
(map (move   1) (range 6)) ;; → '( 1  2  3  4  5  6)
(map (move  -1) (range 6)) ;; → '(-1  0  1  2  3  4)
(map (scale  1) (range 6)) ;; → '( 0  1  2  3  4  5)
(map (scale -1) (range 6)) ;; → '( 0 -1 -2 -3 -4 -5)
(map (move   3) (range 6)) ;; → '( 3  4  5  6  7  8)
(map (move  -3) (range 6)) ;; → '(-3 -2 -1  0  1  2)
(map (scale  3) (range 6)) ;; → '(0  3  6  9  12  15)
(map (scale -3) (range 6)) ;; → '(0 -3 -6 -9 -12 -15)
```
