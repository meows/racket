---
id: trigonometry
sidebar_label: Trigonometry
hide_title: true
---

## `sin` Sine

> People sometimes use `θ` to represent an angle because they want to avoid
> using English letters. Theta is the 8th letter in the Greek alphabet, and it's
> often written in the lowercase as `θ`.

The function `sine` consumes an angle `θ` and will tell you the ratio of the 
length of the hypotenuse divided by length of the opposite side.

`sine(θ) = opposite / hypotenuse`

If you consider that the sine or cosine of any `θ` has to be a point on the 
circle, and you know that sine represents the "height", that allows you predict 
sine for special degrees, like:

``` clojure
(sin (* 0   pi)) ;; →  0
(sin (* 1/2 pi)) ;; →  1
(sin (* 1   pi)) ;; →  0
(sin (* 3/2 pi)) ;; → -1
(sin (* 2   pi)) ;; →  0
(sin (* 5/2 pi)) ;; →  1
```

function | input  | output
-------- | ------ | ------
`sin`    | `0π`   |  0
`sin`    | `1/2π` |  1
`sin`    | `1π`   |  0
`sin`    | `3/2π` | -1
`sin`    | `2π`   |  0

To predict these outputs, we need merely think about where the line would be on
a unit circle for any given angle. 

For example, for 1/2 π radians, we might ask how far along the circle we are, 
and to do that we merely multiply any angle in radians by 1/2, which should get 
us 1/4. That means we're a quarterway around the circle.

If you can picture this in your head with the unit circle, then it should be
easy to know that 1/2 π should give you 1, because we're at the very top of the
unit circle, and `sin` can only tell you how high versus low you are.

> A perhaps silly way to remember what the sine function does is to imagine that 
> its abbreviation, `sin`, refers to a concept of evil behavior, and some people 
> believe that sin makes you lower.

### Example Problem

Jeff walked up a steep slope with an average of 30° degrees in incline, and he
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
of an angle can tell you its "length" or horizontal distance.

function | input  | output
-------- | ------ | ------
`cos`    | `0π`   |  1
`cos`    | `1/2π` |  0
`cos`    | `1π`   | -1
`cos`    | `3/2π` |  0
`cos`    | `2π`   |  1

### Example Problem

Jeff walked up a steep slope with an average of 30° degrees in incline, and he
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
easy to see how if we stop at any point in the line, say at `seconds(2)`,
`seconds(4)`, or `seconds(10)`, we can then draw a perfectly straight vertical 
line down to make a right angle with the `seconds` axis. We should now end up
with a new right triangle.

We should also be able to see that no matter where you draw that triangle, the
ratio of the vertical side to the horizontal side should always be `2:1`. Since
the `tangent` function finds the ratio between the `vertical` side and the
`horizontal` side, then `tangent(θ)` will tell you the velocity as a rational
number.

This graph below is about `63.43°` degrees, which is about `1.107 π` radians. 
If you try the values with the `tan` function, it should return approximately 
`2`.

![triangle](/img/test-2.png)
