---
id: cond
title: cond
hide_title: true
sidebar_label: cond
---

# `cond` -- one of the ultimate conditionals

``` scheme
(define (what-is-this? n)
    (cond [(number? n) "A number!"]
          [(string? n) "A string!"]
          [(boolean? n) "A boolean!"]
          [(list? n) "A list!"]
          [else "I'm not sure."] ;; else is optional, but safer to have
    )
)

(what-is-this? "hi") ;; → "A string!"
(what-is-this? "24") ;; → "A string!"
(what-is-this? 24)   ;; → "A number!"
(what-is-this? 2/4)  ;; → "A number!"
(what-is-this? true) ;; → "A boolean!"
(what-is-this? (or)) ;; → "A boolean!"
(what-is-this? #f)   ;; → "A boolean!"

(what-is-this? (list 1 2 3))  ;; → "A list!"
(what-is-this? '(1 2 3))      ;; → "A list!"
(what-is-this? what-is-this?) ;; → "I'm not sure."
```

## An example with Triangles

As you might recall, the `triangle` of a natural `n` can be defined with just
two rules:

1. `triangle(0) = 0`
2. `triangle(n) = n + triangle(n - 1)`

``` scheme
(define (triangle n)
    (cond [(zero? n) 0]
          [else (+ n (triangle (- n 1)))]
    )
)
```

## An example with Factorial

As you might recall, the `factorial` of a natural `n` can be defined with just
two rules:

1. `factorial(0) = 1`
2. `factorial(n) = n * factorial(n - 1)`

``` scheme
(define (factorial n)
    (cond [(zero? n) 1]
          [else (* n (factorial (- n 1)))]
    )
)
```
