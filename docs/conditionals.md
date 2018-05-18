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

`if` is a function which takes 3 inputs.
 * the first is a _condition_, which means a boolean expression that is used
   to determine how a function will work
 * the second is an expression that will be returned if the condition is `true`
 * the third is an expression that will be returned if the condition is `false`

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

(if (= 100 (expt x 2)) 
    (+ x x)
    (- x x)
)
```

## `and`

`and` takes a list of 0 or more boolean expressions and will evaluate to `true`
_unless_ it encounters one or more `false` values. If `and` encounters even one
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
_unless_ it encounters at least one `true`. If `or` encounters even one `true`,
then it will always be `true`.

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
```
