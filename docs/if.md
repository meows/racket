---
id: if
sidebar_label: if
hide_title: true
---

# Conditionals

> You may want to read the Boolean section for [Values and Types](values.md)
> before proceeding.

If someone has ever told you that you can only play _if_ you've done your work,
then you have been given a condition. That is, you can play, but only if a rule
has been met.

Conditions are also useful in software because we don't always know what kind of
information we're going to get, so in order to make sure we run the right
functions or operations, we often need to first check some of our conditions.

To be more precise, a condition (sometimes called a predicate), is an expression
that always evaluates to a boolean value, and it's used to control how
a function works.

## `if`

`if` is a function which takes 3 inputs:
 * the first is a _condition_, which means a boolean expression that's used to
   determine how a function will work
 * the second is an expression that will be returned if the condition is `true`
 * the third is an expression that will be returned if the condition is `false`

The definition is a bit hard to understand, so let's go into some examples:

``` clojure
;; We define x to be 10.
(define x 10)

;; These evaluate as "x is 10".
(if (= x 10) "x is 10"  "x not 10")
(if true     "x is 10"  "x not 10")

;; These evaluate as "x not 11".
(if (= x 11) "x is 11"  "x not 11")
(if false    "x is 11"  "x not 11")

;; These evaluate as "Orange".
(if (= x 12) "Lemon"  "Orange")
(if false    "Lemon"  "Orange")
(if true     "Orange" "Lemon")

(if (<= x 10) 1 0) ;; → 1
(if (>= x 10) 1 0) ;; → 1

(if (<= x 11) 1 0) ;; → 1
(if (>= x 11) 1 0) ;; → 0

(if true  1 0) ;; → 1
(if true  0 1) ;; → 0
(if false 1 0) ;; → 0
(if false 0 1) ;; → 1

;; → (+ 10 10) → 20
(if (= 100 (expt x 2))
    (+ x x)
    (- x x))
```
