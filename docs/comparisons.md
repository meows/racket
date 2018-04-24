---
id: comparisons
sidebar_label: comparisons
hide_title: true
---

# Number Comparisons

Below are some comparison functions that you may have encountered before in 
math. All comparison functions listed here always take two or more inputs and 
returns one output: either `true` or `false`.

Most or all of the comparison functions below will look very similar to things
you've encountered in math before.

#### `=` Equal

The equals operator `=` takes two (or more) numbers, sees if they are equal, and 
returns either `true` or `false`.

``` clojure
(= 42 42)  ;; → true
(= 24 42)  ;; → false

;; these will return true
(= (+ 30 15) (+ 15 30))
(= (* 30 15) (* 15 30))

;; these will return false
(= (- 30 15) (- 15 30))
(= (/ 30 15) (/ 15 30))
```

Here are some examples with many inputs:

``` clojure
(= 1 1 1 1)  ;; → true
(= 0 0 0 0)  ;; → true
(= 1 1 1 0)  ;; → false
(= 0 0 0 1)  ;; → false

(= true #true #t)   ;; → true
(= false #false #f) ;; → true
```

#### `<` Lesser-than

The less-than operator `<` takes two numbers, sees if the *first* number is 
smaller than the *second* one, and then returns `true` or `false`.

``` clojure
(< 1 1)    ;; → false
(< 1 10)   ;; → true
(< 10 1)   ;; → false
(< 15 30)  ;; → true
(< 30 15)  ;; → false
```

#### `<=` Lesser-than or equal to

The lesser-than or equal-to operator `<=` takes two numbers, sees if the *first*
number is smaller-than **or** equal to the *second* one, and then returns `true` 
or `false`.

``` clojure
(<= 1 10)   ;; → true
(<= 10 1)   ;; → false
(<= 1 1)    ;; → true
(<= 10 10)  ;; → true
```

#### `>=` Greater-than or equal to

``` clojure
(>= 1 10)   ;; → false
(>= 10 1)   ;; → true
(>= 1 1)    ;; → true
(>= 10 10)  ;; → true
```