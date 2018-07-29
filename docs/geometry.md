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

``` clojure
(sin (* 0   pi)) ;; →  0
(sin (* 1/2 pi)) ;; →  1
(sin (* 2/2 pi)) ;; →  0
(sin (* 3/2 pi)) ;; → -1
(sin (* 4/2 pi)) ;; →  0
(sin (* 5/2 pi)) ;; →  1
```

## `cos` cosine

``` clojure
(cos (* 0   pi)) ;; →  1
(cos (* 1/2 pi)) ;; →  0
(cos (* 2/2 pi)) ;; → -1
(cos (* 3/2 pi)) ;; →  0
(cos (* 4/2 pi)) ;; →  1
(cos (* 5/2 pi)) ;; →  0
```

## `tan` tangent

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

## `acos` arccosine

The arccosine function is also known as the inverse cosine function, and it 
consumes a ratio to return an angle in radians.

## `atan` arctangent

The arctangent function is also known as the inverse cosine function, and it 
consumes a ratio to return an angle in radians.

## `degrees->radians`

Roughly translates degrees into radians.

``` clojure
(degrees->radians 90) ;; → 1.5707 -- about 1/2 π
```

## `radians->degrees`

Roughly translates radians into degrees.

``` clojure
(radians->degrees 1.5707)     ;; → 89.9944
(radians->degrees (* 1/2 pi)) ;; → 90
```
