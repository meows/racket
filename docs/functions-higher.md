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

This `cube` function takes a number `n` and returns a number.

``` clojure
;; number → number
(define (cube n) 
    (* n n n)
)
```

This list function `remove-odds` takes a list `lst` and returns a list.

``` scheme
;; list → list
(define (remove-odds lst) 
    (filter even? lst)
)
```

## Returning things we already know about

Let's focus a bit more one the kinds of things we've learned to return so far.

### Returning numbers

``` scheme
(define (total-bill price)
    (+ (* price 1.0725) ;; California sales tax 
       (* price 1.15)   ;; common tip amount
    )
)
```

### Returning booleans

``` scheme
(define (div-by-3-or-5? n)
    (or (zero? (remainder n 3))
        (zero? (remainder n 5))
    )
)
```

### Returning strings

``` racket
(define (say-hi? answer)
    (if (equal? answer #t)
        "Hi!"
        "No hello for you."
    )
)
```

## Returning a function

> You may want to review [`lambda`](lambda.md) before going on.

This function `move` takes a natural input `amount` and returns a function.

``` scheme
(define (move amount) 
    (λ (x) (+ x amount))
)
```

This function `scale` takes a natural input `amount` and returns a function.

``` scheme
(define (scale amount) 
    (λ (x) (* x amount))
)
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
(map (scale  3) (range 6)) ;; → '( 0  3  6  9  12  15)
(map (scale -3) (range 6)) ;; → '( 0 -3 -6 -9 -12 -15)
```

## Exercise

Write a function called `line` which takes two natural inputs, a velocity `v`
and a starting position `p0`, and returns a new function which can generate a
linear sequence based the velocity and starting position of my choice.

``` scheme
(define (line p0 v)
    (λ ...)
)
```

For example, this is how I would like to use your `line` function:

``` clojure
(map (line  7 -1) (range 5)) ;; → 7, 6, 5, 4, 3
(map (line  7  1) (range 5)) ;; → 7, 8, 9, 10, 11
(map (line -4  2) (range 5)) ;; → -4, -2, 0, 2, 4
(map (line -4 -2) (range 5)) ;; → -4, -6, -8, -10, -12
```
