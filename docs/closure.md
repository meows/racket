---
id: Closure
title: Closure
hide_title: true
sidebar_label: Closure
---

# Closure

Let's talk about the naturals for a second, which are all the whole positive
numbers including `0`. If we have two naturals, `n1` and `n2`, and we add them
together like `(+ n1 n2)`, is there a possibility that the answer will ever 
_not_ be a natural?

No matter how big or small `n1` and `n2`?

``` clojure
(define (add n1 n2) (+ n1 n2))

(natural? (add 2 3))     ;; → true
(natural? (add 123 456)) ;; → true
```

What about subtraction? Is there a combination of `n1` and `n2` that's ever not 
natural?

``` clojure
(define (subtract n1 n2) (- n1 n2))

(natural? (subtract 5 10)) ;; → false
```
