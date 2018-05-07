---
id: conditionals
sidebar_label: Conditionals
hide_title: true
---

# Conditionals

If someone has ever told you that you can only play _if_ you've done your work,
then you have been given a condition. That is, you can play, but only _if_
something else.

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

;; What will these evaluate to?
(if (<= x 10) 1 0)
(if (>= x 10) 1 0)

(if (= 100 (expt x 2) 
    (+ x x)
    (- x x))
```

## `and`

`and` takes a list of 0 or more boolean expressions and will evaluate to `true`
_unless_ it encounters one or more `false` values.

``` clojure
(and)                    ;; → true
(and false false false)  ;; → false
(and true  false false)  ;; → false
(and true  true  false)  ;; → false
(and true  true  true)   ;; → true
```

## `or`

`or` takes a list of 0 or more boolean expressions and evaluates to `false`
_unless_ it encounters at least one `true`.

``` clojure
(or)                    ;; → false
(or false false false)  ;; → false
(or true  false false)  ;; → true
(or true  true  false)  ;; → true
(or true  true  true)   ;; → true
```
