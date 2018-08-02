---
id: geometry
sidebar_label: geometry
hide_title: true
---

# Functions for Geometry

Before going further, you might want to familiarize yourself with the 
[Trigonometry](trigonometry.md) section under Concepts. Most or all of the
functions below assume your units are in radians, and all of these functions
only work approximately.

## `sin` sine

`sin` consumes an angle in radians and returns a real which represents the ratio
of lengths between the opposite side and hypotenuse of a triangle. It's 
frequently used to determine the "vertical" distance.

``` clojure
(sin (* 0   pi)) ;; →  0
(sin (* 1/2 pi)) ;; →  1
(sin (* 2/2 pi)) ;; →  0
(sin (* 3/2 pi)) ;; → -1
(sin (* 4/2 pi)) ;; →  0
(sin (* 5/2 pi)) ;; →  1
```

## `cos` cosine

`cos` consumes an angle in radians and returns a real which represents the ratio
of lengths between the adjacent side and hypotenuse of a triangle. It's 
frequently used to determine the "horizontal" distance.

``` clojure
(cos (* 0   pi)) ;; →  1
(cos (* 1/2 pi)) ;; →  0
(cos (* 2/2 pi)) ;; → -1
(cos (* 3/2 pi)) ;; →  0
(cos (* 4/2 pi)) ;; →  1
(cos (* 5/2 pi)) ;; →  0
```

## `tan` tangent

`tan` consumes an angle in radians and returns a rational which represents the
ratio of lengths between the opposite and adjacent side of a triangle.

``` clojure
(tan (* 0   pi)) ;; →  0
(tan (* 1/4 pi)) ;; →  1
(tan (* 2/4 pi)) ;; →  undefined
(tan (* 3/4 pi)) ;; → -1
(tan (* 4/4 pi)) ;; →  0
(tan (* 5/4 pi)) ;; →  1
(tan (* 6/4 pi)) ;; →  undefined
(tan (* 7/4 pi)) ;; → -1
(tan (* 8/4 pi)) ;; →  0
```

## `asin` arcsine

The arcsine function is also known as the inverse cosine function, and it 
consumes a ratio to return an angle in radians.

``` clojure
;; What angle would we expect when sine(θ) = -1?
(radians->degrees (asin  1)) ;; → 90.0
(radians->degrees (asin  0)) ;; → 0
(radians->degrees (asin -1)) ;; → -90.0
```

## `acos` arccosine

The arccosine function is also known as the inverse cosine function, and it 
consumes a ratio to return an angle in radians.

``` clojure
(acos  1) ;; → 0
(acos  0) ;; → 1.5707963267948966
(acos -1) ;; → 3.141592653589793
```

## `atan` arctangent

The arctangent function is also known as the inverse cosine function, and it 
consumes a ratio to return an angle in radians.

``` clojure
(radians->degrees (atan  1)) ;; → 45.0
(radians->degrees (atan  0)) ;; → 0
(radians->degrees (atan -1)) ;; → -45.0
```

## `degrees->radians`

Roughly translates degrees into radians.

``` clojure
(degrees->radians 90)                 ;; → 1.5707963267948966
(radians->degrees 1.5707963267948966) ;; → 90.0
```

## `radians->degrees`

Roughly translates radians into degrees.

``` clojure
(* 1/2 pi)                    ;; → 1.5707963267948966
(asin 1)                      ;; → 1.5707963267948966
(radians->degrees (* 1/2 pi)) ;; → 90.0
(radians->degrees (asin 1))   ;; → 90.0
```
