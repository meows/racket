---
id: comparisons
sidebar_label: Comparisons
hide_title: true
---

# Comparing Numbers

Comparison functions look very similar to the ones you've seen in math before,
and what they do is they compare two or more numbers with each other. Some
comparison functions ask if two or more numbers are equal, and others ask if the 
numbers are bigger or smaller.

In a way `0 = 1` is like a question or an argument, to which we would answer 
`false`. And so for the question or argument of whether `1 = 1`, we would 
answer `true`.

All comparison functions here require two or more numbers to compare, and they
always return a boolean output, either `true` or `false`. Make sure you've read 
the Boolean section on [values and types](values.md) before proceeding.


## `=` Equal

In Racket, `=` is a function which takes two (or more) numbers, sees if they are 
equal, and then returns either `true` or `false`.

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
```

## `<` Less-than

The less-than operator `<` takes two numbers, sees if the _first_ number is 
smaller than the _second_ number, and then returns either `true` or `false`. An
interesting thing you might note is that when you compare multiple numbers, you
can easily tell the result by visually checking the order.

There's actually no difference between comparing order and size.

``` clojure
(< 1 1)     ;; → false
(< 0 1)     ;; → true
(< 1 0)     ;; → false
(< 15 30)   ;; → true
(< 30 15)   ;; → false
(< 1 2 3 4) ;; → true
(< 1 5 3 4) ;; → false
```

## `>` Greater-than

The greater-than operator `>` takes two numbers and sees if the _first_ number
is greater than the _second_ number, and then returns `true` or `false`.

``` clojure
(> 1 1)     ;; → false
(> 1 0)     ;; → true
(> 0 1)     ;; → false
(> 4 3 2 1) ;; → true
(> 4 3 2 4) ;; → false
```

## `<=` Lesser-than or equal to

The lesser-than or equal-to operator `<=` takes two numbers, sees if the *first*
number is smaller-than **or** equal to the *second* one, and then returns `true` 
or `false`.

``` clojure
(<= 1 10)     ;; → true
(<= 10 1)     ;; → false
(<= 1 1 1 10) ;; → true
(<= 1 1 2 2)  ;; → true
```

## `>=` Greater-than or equal to

``` clojure
(>= 1 10)  ;; → false
(>= 10 1)  ;; → true
(>= 1 1)   ;; → true
(>= 10 10) ;; → true
```
