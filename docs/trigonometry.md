## `sin`

> People sometimes use `θ` to represent an angle because they want to avoid
> using English letters. Theta is the 8th letter in the Greek alphabet, and it's
> often written in the lowercase as `θ`.

The sine function consumes an angle `θ` for a right triangle and will tell you 
the ratio of the length of the hypotenuse `h` divided by length of the opposite 
side `o`.

`sine(θ) = o / h`

``` clojure
; π/6 is 30°, and in a 30-60-90 triangle, the hypotenuse is double the length of
; one of the sides.
(sin (* 1/6 pi)) ;; → 1/2

(define π pi)
```

## `cos`
