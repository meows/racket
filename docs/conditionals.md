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

``` clojure
(define x 123.45)
(define (sign num)
        (cond (((compose not number?) num) "Error, sign requires a real number.")
              ((negative? num) "Negative")
              ((positive? num) "Positive")
              (else 0)))   ;; this else statement is optional

(sign -23)
```

## `and`

`and` takes a list of 0 or more boolean expressions and evaluates to `false` iff
a single expression evaluates as false.

``` clojure
(and)                    ;; → true
(and false false false)  ;; → false
(and true  false false)  ;; → false
(and true  true  false)  ;; → false
(and true  true  true)   ;; → true
```

## `or`

`or` takes a list of 0 or more boolean expressions and evaluates to `true` iff
a single expression evaluates as true.

``` clojure
(or)                    ;; → false
(or false false false)  ;; → false
(or true  false false)  ;; → true
(or true  true  false)  ;; → true
(or true  true  true)   ;; → true
```
