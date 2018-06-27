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
;; real -> real
(define (cube l w h) (* l w h))

;; list -> list
(define (remove-odds lst) (filter even? lst))
```

