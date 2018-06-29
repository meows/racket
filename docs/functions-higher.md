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

## Returning things we already know about

``` clojure
(define (what-do-you-want? type)
    (cond [(equal? type "string") "You wanted a string."]
          [(equal? type "list") '("you" "wanted" "a" "list")]
          [(equal? type "boolean") true]
          [(equal? type "number") 42]
          [else "I don't know what you want."]
    )
)

(what-do-you-want? "string")
(what-do-you-want? "list")
(what-do-you-want? "boolean")
(what-do-you-want? "number")
```

## Returning a function

> You may want to review [`lambda`](lambda.md) before going on.

``` scheme
(define (add amount)
    (λ (x)
       (+ x amount)))

(define (scale amount)
    (λ (x)
       (* x amount)))
```

Let's use these the example functions `add` and `scale`:

``` clojure
((add   5) 5)             ;; → 10
((scale 5) 5)             ;; → 25
((add   5) ((add   4) 3)) ;; → 12
((scale 5) ((scale 4) 3)) ;; → 60
((scale 5) ((add   4) 3)) ;; → 35

(map (add    3) (range 6)) ;; → '(3 4 5 6 7 8)
(map (add   -3) (range 6)) ;; → '(-3 -2 -1 0 1 2)
(map (scale -1) (range 6)) ;; → '(0 -1 -2 -3 -4 -5)
(map (scale  1) (range 6)) ;; → '(0 1 2 3 4 5)
```