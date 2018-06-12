---
id: Closure
title: Closure
hide_title: true
sidebar_label: Closure
---

# Closure

Let's talk about the naturals for a second, which are all the whole positive
numbers including `0`. If we have two numbers, `n1` and `n2`, and we add them
together like `(+ n1 n2)`, is there a possibility that the answer will ever 
_not_ be a natural?

No matter how big or small `n1` and `n2`?

``` clojure
(define (add n1 n2)
    (if (and (natural? n1) (natural? n2))
            
    )
)
```