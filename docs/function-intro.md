---
id: function-intro
title: Using Functions
hide_title: true
sidebar_label: Using Functions
---

# Functions

In Racket, everything consists of expressions, or lists of _one or more_ atoms,
and the first symbol is assumed by default to be a function, even if it's a
single-item expression. To get used to how they work, let's look at how they're
used first, and then we'll look at how to create our own functions.

## Using Arithemtic Functions

Here are some examples of *applying* or using a function, with functions you're
probably already familiar with. See if you can understand what they do. Notice
that the first [atom](atom.md) inside a list is assumed to be a function.

``` clojure
;; Addition
(+ 5 5)       ;; → 10
(+ 5 -5)      ;; → 0
(+ -5 -5)     ;; → -10
(+ 1 2 3 4 5) ;; → 15

;; Subtraction
(- 5 5)          ;; → 0
(- 5 -5)         ;; → 10
(- -5 5)         ;; → -10
(- 15 5 4 3 2 1) ;; → 0

;; Multiplication
(* 10 10)     ;; → 100
(* 10 0)      ;; → 0
(* 0 10)      ;; → 0
(* 10 1/2)    ;; → 5
(* 5 4 3 2 1) ;; → 120

;; Division
(/ 10 10)  ;; → 1
(/ 10 5)   ;; → 2
(/ 5 10)   ;; → 1/2
(/ 0 10)   ;; → 0
(/ 10 0)   ;; Error: division by 0 has no meaning.
(/ 8 2 2)  ;; → 2
(/ 27 3 3) ;; → 3
```

## Extra Tricky Examples
``` clojure
;; This will evaluate to 40
(+ 10
   (* 2 5)
   (- 20 (+ 5 5))
   (/ 100 10))

;; What will this evaluate to?
(/ (* 1 2 (+ 2 1) (+ 2 2) (+ 2 3)) 5 4 3 2 1)
```

## In Review
* `+` addition
* `-` subtraction
* `*` multiplication
* `/` division
* `expt` exponentiation
