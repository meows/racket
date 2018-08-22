---
id: renaming
title: Renaming
hide_title: true
sidebar_label: Renaming
---

> WIP: Don't use yet.

# Renaming

## Naming with `let`

`let` allows you to refer to a value by a name within its "body".

``` clojure
(let ([power (expt 13 4)])
     (if (< power 1000)
         power
         (log power 13)))
```

`let` takes two inputs:
   1. a sub-expression consisting of name-value pairs, informally called the "head";
   2. an expression that will be the result of `let`, informally called the "body".

In this case we have a sub-expression with only one name-value pair,

``` clojure
([power (expt 13 4)])
```

And for the final expression which will be evaluated as the result of `let`, we
have:

``` clojure
(if (< power 1000)
    power
    (log power 13))
```

Notice that we're allowed to refer to `power`, which is a name that was just
newly created by the "head" of the `let` function.

Also, when we do things like `(expt 13 4)`, we're running a computation, where
a computation means using a function to do something. No computation is free,
and in the above example, by storing the value of `(expt 13 4)` behind the name
`power`, we're getting some efficiency by avoiding recomputation.

## Renaming with `require`

It may seem a little extreme, but everything in Racket can be renamed. `+` and
`*`, `if`, or even `define`, which is part of the core or "base" of Racket. That
means it's included in Racket without you having to do anything. After all, we
didn't have to (`require define`) to begin using it. It was just included by
default.

But even those things we are allowed to change, as we will see with `define`:

```
#lang racket

(require (rename-in racket/base [define fn]))
(require (rename-in racket/base [define def]))

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Example #1

(fn (add2 x) 
    (+ x 2))

(def age 10)

(+ age age) ;; → 20
(add2 age)  ;; → 12

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Example #2

(fn ++ add1)
(fn -- sub1)

(-- 3) ;; → 2
(-- 2) ;; → 1
(++ 1) ;; → 2
(++ 2) ;; → 3
```
