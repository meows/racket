---
id: conditionals
sidebar_label: Conditionals
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
functions or operations, we often need to first check _if_ some of our 
conditions have been met.

## `if`

`if` is a function which takes 3 inputs:
 * the first is a _condition_, which means a boolean expression that's used to 
   determine how a function will work
 * the second is an expression that will be returned if the condition is `true`
 * the third is an expression that will be returned if the condition is `false`

The definition is a bit hard to understand, so let's go into an example:

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
(if true "Lemon" "Orange")
(if false "Orange" "Lemon")

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

## `and`

`and` takes a list of 0 or more boolean expressions and will evaluate to `true`
_unless_ it encounters at least one `false` value. If `and` encounters even one
`false`, then it will always be `false`.

``` clojure
(and)                    ;; → true
(and false false false)  ;; → false
(and true  false false)  ;; → false
(and true  true  false)  ;; → false
(and true  true  true)   ;; → true
```

## `or`

`or` takes a list of 0 or more boolean expressions and evaluates to `false`
_unless_ it encounters at least one `true` value. If `or` encounters even one 
`true`, then it will always be `true`.

``` clojure
(or)                    ;; → false
(or false false false)  ;; → false
(or true  false false)  ;; → true
(or true  true  false)  ;; → true
(or true  true  true)   ;; → true
```

## A quick review

What will these expressions evaluate to?

``` clojure
(or)
(and)

(or true false)
(and true false)

(or (and) (or))
(and (and) (or))

(or (and true true)
    (or false false))

(or (and true false)
    (or true false))

(and (or true false)
     (and true true))
```
