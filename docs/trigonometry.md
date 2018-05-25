## `sin` Sine

> People sometimes use `θ` to represent an angle because they want to avoid
> using English letters. Theta is the 8th letter in the Greek alphabet, and it's
> often written in the lowercase as `θ`.

The sine function consumes an angle `θ` for a right triangle and will tell you 
the ratio of the length of the hypotenuse `h` divided by length of the opposite 
side `o`.

`sine(θ) = o / h`

If we set the radius of a circle to `1`, then the the `sine(θ)` would equal to
the hypotenuse, since anything divided by one is itself. If you consider that
the sine or cosine of any `θ` has to be a point on the circle, and you know that
sine represents the "height", that allows you predict sine for special degrees,
like:

``` clojure
(sin (* 0   pi))
(sin (* 1/2 pi))
(sin (* 1   pi))
(sin (* 3/2 pi))
(sin (* 2   pi))
```

| function | input      | output
| -------- | ---------- | ------
| `sin`    | `0π`       | 0
| `sin`    | `1/2π`     | 1
| `sin`    | `1π`       | 0
| `sin`    | `3/2π`     | -1
| `sin`    | `2π`       | 0 

| function | input      | output
| -------- | ---------- | ------
| `cos`    | `0π`       | 1
| `cos`    | `1/2π`     | 0
| `cos`    | `1π`       | -1
| `cos`    | `3/2π`     | 0
| `cos`    | `2π`       | 1

``` clojure
; π/6 is 30°, and in a 30-60-90 triangle, the hypotenuse is double the length of
; one of the sides.
(sin (* 1/6 pi)) ;; → 1/2

(define π pi)
```

## `cos` Cosine

While the sine of an angle can tell you the "height" of a hypotenuse, the cosine
of an angle can tell you its "length".

## `tan` Tangent

