---
id: conditionals
sidebar_label: Conditionals
hide_title: true
---

# Conditionals

## `if`

`if` is a function which takes 3 inputs.
 * the first is a boolean expression
 * the second is an expression that will be returned if true
 * the third is an expression that will be returned if false

``` clojure
(define x 10)

;; This evaluates as "x is 10".
(if (= x 10) "x is 10"  "x not 10")

;; This evaluates as "x not 11".
(if (= x 11) "x is 11"  "x not 11")

;; This evaluates as "Orange".
(if (= x 12) "Lemon"  "Orange")

;; What will this evaluate to?
(if (<= x 10) 1 0)
(if (>= x 10) 1 0)
```

## `cond`

`cond` is a function which takes zero or more length-2 expressions. Each 
length-2 expression has: 
   1. a boolean expression as the first item
   2. a second expression return conditional true

``` clojure
(define (sign num)
        ;; notice every expression inside cond has two things:
        ;; 1. the first is a boolean expression
        ;; 2. the second is an expression that would be used as the result for
        ;;    for this cond function if the boolean expression were true
        (cond (((compose not number?) num) "error")
              ((negative? num) "negative")
              ((positive? num) "positive")
              (else "zero")))                 ;; this else statement is optional

(sign 0)   ;; → "zero"
(sign -0)  ;; → "zero"
(sign 1)   ;; → "positive"
(sign -1)  ;; → "negative"
(sign #t)  ;; → "error"
```

## `and`

`and` takes a list of 0 or more boolean expressions and evaluates to `false` _iff_
a single expression evaluates as false.

``` clojure
(and)                    ;; → true
(and false false false)  ;; → false
(and true  false false)  ;; → false
(and true  true  false)  ;; → false
(and true  true  true)   ;; → true
```

## `or`

`or` takes a list of 0 or more boolean expressions and evaluates to `true` _iff_
a single expression evaluates as true.

``` clojure
(or)                    ;; → false
(or false false false)  ;; → false
(or true  false false)  ;; → true
(or true  true  false)  ;; → true
(or true  true  true)   ;; → true
```
