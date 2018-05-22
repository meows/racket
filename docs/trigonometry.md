---
id: trigonometry
title: Trigonometry
hide_title: true
sidebar_label: trigonometry
---

`sin`

The sine function consumes an angle for a right triangle and will tell

``` clojure
; π/6 is 30°, and in a 30-60-90 triangle, the hypotenuse is double the length of
; one of the sides.
(sin (* 1/6 pi)) ;; → 1/2


(define π pi)

(define (id Θ)
        (+ (sqr (sin Θ)) (sqr (cos Θ)))
)
```

`cos`