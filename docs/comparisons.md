---
id: comparisons
sidebar_label: Comparisons
hide_title: true
---

# Comparisons

## Comparing Numbers

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


### `=` Equal

In Racket, `=` is a function which takes two (or more) numbers, sees if they are 
equal, and then returns either `true` or `false`.

``` clojure
(= 42 42)  ;; → true
(= 24 42)  ;; → false

;; these will return true
(= (+ 30 15) 
   (+ 15 30))

(= (* 30 15) 
   (* 15 30))

;; these will return false
(= (- 30 15) 
   (- 15 30))

(= (/ 30 15)
   (/ 15 30))
```

Here are some examples with many inputs:

``` clojure
(= 1 1 1 1)  ;; → true
(= 0 0 0 0)  ;; → true
(= 1 1 1 0)  ;; → false
(= 0 0 0 1)  ;; → false
```

### `<` Less-than

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

### `>` Greater-than

The greater-than operator `>` takes two numbers and sees if the _first_ number
is greater than the _second_ number, and then returns `true` or `false`.

``` clojure
(> 1 1)     ;; → false
(> 1 0)     ;; → true
(> 0 1)     ;; → false
(> 4 3 2 1) ;; → true
(> 4 3 2 4) ;; → false
```

### `<=` Lesser-than or equal to

The lesser-than or equal-to operator `<=` takes two numbers, sees if the *first*
number is smaller-than **or** equal to the *second* one, and then returns `true` 
or `false`.

``` clojure
(<= 1 10)     ;; → true
(<= 10 1)     ;; → false
(<= 1 1 1 10) ;; → true
(<= 1 1 2 2)  ;; → true
```

### `>=` Greater-than or equal to

``` clojure
(>= 1 10)  ;; → false
(>= 10 1)  ;; → true
(>= 1 1)   ;; → true
(>= 10 10) ;; → true
```

## Comparing Booleans

These functions all take 0 or more booleans, and they give back a boolean. 
They're often used to check if there's a single `true` or `false` test result.

### `and`

`and` takes a list of 0 or more boolean expressions and will evaluate to `true`
_unless_ it encounters even one `false` value. If `and` encounters even one 
`false`, then it will always be `false`.

``` clojure
(and)                   ;; → true
(and false false false) ;; → false
(and true  false false) ;; → false
(and true  true  false) ;; → false
(and true  true  true)  ;; → true
```

One good use of `and` is when you have multiple rules or conditions that you
need to be all `true` at the same time. In the example below, we check if a 
number is both even and negative at the same time.

``` clojure
(define (even-and-negative? n)
    (and (even? n) 
         (negative? n)))

(even-and-negative? -10) ;; → true
(even-and-negative?  10) ;; → false
```

### `or`

`or` takes a list of 0 or more boolean expressions and evaluates to `false`
_unless_ it encounters even one `true` value. If `or` encounters even one
`true`, then it will always be `true`.

``` clojure
(or)                   ;; → false
(or false false false) ;; → false
(or true  false false) ;; → true
(or true  true  false) ;; → true
(or true  true  true)  ;; → true
```

A good place to use `or` is when you only need to know if any one of your rules
or conditions is `true`. In the example below, we check if a number `n` is 
divisible by `2`, `7`, or `9`.

``` clojure
(define (div-by-2-7-9? n)
    (or (zero? (remainder n 2))
        (zero? (remainder n 7))
        (zero? (remainder n 9))))

(div-by-2-7-9? 4)  ;; → true
(div-by-2-7-9? 14) ;; → true
(div-by-2-7-9? 15) ;; → false
```

## A quick review

What will these expressions evaluate to?

``` clojure
(or)
(and)

(or true false)
(and true false)

(or  (and) (or))
(and (and) (or))

(or (and true true)
    (or false false))

(or (and true false)
    (or true false))

(and (or true false)
     (and true true))
```