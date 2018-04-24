---
id: conditionals
sidebar_label: Conditionals
hide_title: true
---

# Conditionals

## `if`

`if` is a function which takes 3 inputs.
 * the first is a boolean expression
 * the second is an expression
 * the third is an expression

``` clojure
(define x 10)

;; This evaluates as "x is 10".
(if (= x 10) "x is 10"  "x not 10")

;; This evaluates as "x not 11".
(if (= x 11) "x is 11"  "x not 11")

;; What will this evaluate to?
(if (<= x 10) 1 0)
```
