---
id: trigonometry
sidebar_label: Trigonometry
hide_title: true
---

## `sin` Sine

> WIP: Don't use yet!

> People sometimes use `θ` to represent an angle because they want to avoid
> using English letters. Theta is the 8th letter in the Greek alphabet, and it's
> often written in the lowercase as `θ`.

The sine function consumes an angle `θ` for a right triangle and will tell you
the ratio of the length of the hypotenuse `h` divided by length of the opposite
side `o`.

`sine(θ) = o / h`

If you consider that the sine or cosine of any `θ` has to be a point on the 
circle, and you know that sine represents the "height", that allows you predict 
sine for special degrees, like:

``` clojure
(sin (* 0   pi))
(sin (* 1/2 pi))
(sin (* 1   pi))
(sin (* 3/2 pi))
(sin (* 2   pi))
```

| function | input  | output
| -------- | ------ | ------
| `sin`    | `0π`   | 0
| `sin`    | `1/2π` | 1
| `sin`    | `1π`   | 0
| `sin`    | `3/2π` | -1
| `sin`    | `2π`   | 0

``` clojure
; π/6 is 30°, and in a 30-60-90 triangle, the hypotenuse is double the length of
; the shortest side.
(sin (* 1/6 pi)) ;; → 1/2

(define π pi)
```

### Example Problem

Jeff walked up a steep slope with an average of 30 degrees in incline, and he
climbed for 10 miles. How much was his horizontal climb?

1. `sine(θ) = opposite / hypotenuse`
2. `sine(π/6) = opposite / 10`
3. `10 * sine(π/6) = opposite`

``` clojure
;; (* 10 0.5) → 5 miles
(define vertical-distance
   (* 10
      (sin (* 1/6 pi))
   )
)
```

## `cos` Cosine

While the sine of an angle can tell you the "height" of a triangle, the cosine
of an angle can tell you its "length".

| function | input  | output
| -------- | ------ | ------
| `cos`    | `0π`   | 1
| `cos`    | `1/2π` | 0
| `cos`    | `1π`   | -1
| `cos`    | `3/2π` | 0
| `cos`    | `2π`   | 1

### Example Problem

Jeff walked up a steep slope with an average of 30 degrees in incline, and he
climbed for 10 miles. When he got there, he looked over a cliff and he shot a
light beam straight down to the ground. If I were to measure the difference on 
the ground between Jeff's original position and the new position of Jeff's 
laser, how much change would I find?

1. `cosine(θ) = adjacent / hypotenuse`
2. `cosine(π/6) = adjacent / 10`
3. `10 * cosine(π/6) = adjacent`

``` clojure
(define horizontal-distance
   (* 10
      (cos (* 1/6 pi))
   )
)
```

## `tan` Tangent

Finally we get to tangent, which is defined as the ratio of the opposite side
`o` to the adjacent side `a`. 

Let's consider the line segment below. Given this example, it can be visually
easy to see how if you form a 

![triangle](/img/test-2.png)

You might say that the velocity of this line is 2.
