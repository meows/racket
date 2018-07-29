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

Although these values are important, you shouldn't memorize them. To predict 
these outputs, we need merely think about where the line would intersect the
perimeter of your unit circle.

For the above example, if we start from 0 and rotate 1/2 π radians (90° degrees) 
at a time, you should be able to visualize where you are on the unit circle.
When we're at 3/2 π, that's the same as a clock hand pointing at 6 pm. Since 
this is the unit circle with a radius of 1, that means we're at `-1` for height.

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
      (sin (* 1/6 pi))))
```

## `cos` Cosine

While the sine of an angle can tell you the "height" of a triangle, the cosine
of an angle can tell you its "length" or horizontal distance.

``` clojure
(cos (* 0   pi)) ;; →   1
(cos (* 1/2 pi)) ;; →   0
(cos (* 2/2 pi)) ;; →  -1
(cos (* 3/2 pi)) ;; →   0
(cos (* 4/2 pi)) ;; →   1
(cos (* 5/2 pi)) ;; →   0
```

### Example Problem

Jeff walked up a steep slope with an average of 30° degrees in incline, and he
climbed for 10 miles. When he got there, he looked over a cliff and he shot a
light beam straight down to the ground. If I were to measure the difference on
the ground between Jeff's original position and the new position of Jeff's
laser, how much change would I find?

1. `cosine(θ) = adjacent / hypotenuse`
2. `cosine(π/3) = adjacent / 10`
3. `10 * cosine(π/3) = adjacent`

``` clojure
(define horizontal-distance
   (* 10
      (cos (* 1/3 pi))))
```

## `tan` Tangent

Finally we get to tangent, which is defined as the ratio of the opposite side
to the adjacent side.

Let's consider the line segment below. Given this example, it can be visually
easy to see how if we stop at any point in the line, say at `seconds(2)`,
`seconds(4)`, or `seconds(10)`, we can then draw a perfectly straight vertical
line down to make a right angle with the `seconds` axis. We should now end up
with a new right triangle.

We should also be able to see that no matter where you draw that triangle, the
ratio of the vertical side to the horizontal side should always be `2:1`. Since
the `tangent` function finds the ratio between the `vertical` side and the
`horizontal` side, then `tangent(θ)` will tell you the "velocity".

This graph below is about `63.43°` degrees, which is about `1.10714 π` radians.
If you try the values with the `tan` function, it should return approximately
`2`.

``` clojure
(define vertical/horizontal
   (tan 0.3524))
```

![triangle](/img/test-2.png)

### Example Problem

Alice is trying to determing the height of a very tall rectangular building.
From the ground, she measures that she is 57 meters away from the building. She
then plants a small laser in the ground, and points it to the very edge of the
building, thereby forming a right triangle with the building side, the laser
path, and the ground. She measures the angle of the laser from the ground to be
55 degrees.

Alice now believes she knows enough to approximate the height of the building.
Why?

1. `tangent(θ) = opposite / adjacent`
2. `tangent(55) = opposite / 57`
3. `57 * tangent(55) = opposite`

## Summary

* `sine(θ) = opposite/hypotenuse`, which can tell you "vertical" distance
* `cosine(θ) = adjacent/hypotenuse`, which can can tell you "horizontal" distance
* `tangent(θ) = opposite/adjacent`, which is ratio of the vertical to
  horizontal, which can also be interpreted as "velocity".
