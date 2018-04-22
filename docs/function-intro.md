---
id: function-intro
title: Using Functions
hide_title: true
sidebar_label: Using Functions
---

## Using Functions

In Racket, everything consists of lists of symbols, and the first symbol is
assumed by default to be a function, even if it's a single-item list. (It's
possible to have lists with only data inside without Racket thinking there are
any functions, but we'll talk more on that later.)

Here are some examples of *applying* or using a function, with functions you're 
probably already familiar with. See if you can understand what they do.

``` clojure
;; Addition
(+ 5 5)       ; →  10
(+ 5 -5)      ; →   0
(+ -5 -5)     ; → -10
(+ 1 2 3 4 5) ; →  15

;; Subtraction
(- 5 5)          ; →   0
(- 5 -5)         ; →  10
(- -5 5)         ; → -10
(- 15 5 4 3 2 1) ; →   0

;; Multiplication
(* 10 10)     ; → 100
(* 10 0)      ; →   0
(* 0 10)      ; →   0
(* 10 1/2)    ; →   5
(* 5 4 3 2 1) ; → 120

;; Division
(/ 10 10)   ; → 1
(/ 10 5)    ; → 2
(/ 5 10)    ; → 1/2
(/ 0 10)    ; → 0
(/ 10 0)    ; Error: division by 0 has no meaning.
(/ 8 2 2)   ; → 2
(/ 27 3 3)  ; → 3

;; Exponentiation by power of 2
(expt 1 2)  ; → 1
(expt 2 2)  ; → 4
(expt 3 2)  ; → 9
(expt 4 2)  ; → 16
(expt 5 2)  ; → 25

;; Exponentiation by power of 1/2
(expt 1 1/2)   ; → 1
(expt 4 1/2)   ; → 2
(expt 9 1/2)   ; → 3
(expt 16 1/2)  ; → 4
(expt 25 1/2)  ; → 5

;; Exponentiation by power of 3
(expt 1 3)  ; → 1
(expt 2 3)  ; → 8
(expt 3 3)  ; → 27
(expt 4 3)  ; → 64
(expt 5 3)  ; → 125

;; Exponentiation by power of 1/3
(expt 1 1/3)    ; → 1
(expt 8 1/3)    ; → 2
(expt 27 1/3)   ; → 3
(expt 64 1/3)   ; → 4
(expt 125 1/3)  ; → 5
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
