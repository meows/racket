---
id: geometry
sidebar_label: geometry
hide_title: true
---

# Functions for Geometry

Before going further, you might want to familiarize yourself with the 
[Trigonometry](trigonometry.md) section under Concepts. Most or all of the
functions below assume your units are in radians.

## `sin` sine

``` clojure
(sin (* 0   pi)) ;; →  0
(sin (* 1/2 pi)) ;; →  1
(sin (* 1   pi)) ;; →  0
(sin (* 3/2 pi)) ;; → -1
(sin (* 2   pi)) ;; →  0
(sin (* 5/2 pi)) ;; →  1
```

## `cos` cosine

``` clojure
(cos (* 0   pi)) ;; →  1
(cos (* 1/2 pi)) ;; →  0
(cos (* 1   pi)) ;; → -1
(cos (* 3/2 pi)) ;; →  0
(cos (* 2   pi)) ;; →  1
(cos (* 5/2 pi)) ;; →  0
```

## `tan` tangent

``` clojure
(tan (* 0   pi)) ;; →  0
(tan (* 1/2 pi)) ;; →  1
(tan (* 1   pi)) ;; →  0
(tan (* 3/2 pi)) ;; → -1
(tan (* 2   pi)) ;; →  0
(tan (* 5/2 pi)) ;; →  1
```

## `asin` arcsine

## `acos` arccosine

## `atan` arctangent

## `degrees->radians`

## `radians->degrees`
