---
id: trigonometry
title: Trigonometry
hide_title: true
sidebar_label: trigonometry
---

# A Right Triangle

## Ratios

## `sin`

The sine function consumes an angle `Θ` for a right triangle and will tell you 
the ratio of the length of the hypotenuse `h` divided by length of the opposite 
side `o`.

`sine(Θ) = o / h`

``` clojure
; π/6 is 30°, and in a 30-60-90 triangle, the hypotenuse is double the length of
; one of the sides.
(sin (* 1/6 pi)) ;; → 1/2

(define π pi)
```

## `cos`
