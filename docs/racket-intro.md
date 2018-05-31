---
id: racket-intro
sidebar_label: Intro
title: Dive into Racket
hide_title: true
---

# The feeling of Racket

Racket comes from a family of languages with an extremely deep history in 
computers, going back over 60 years, and it was originally made for people to be 
able to easily represent algebraic problems on the computer.

## Racket is a language of expressions

An expression is a sequence of one or more [atoms](atom.md) or sub-expressions. 
The atoms and sub-expressions inside are seperated by spaces, and they are 
altogether surrounded by parentheses, like this:

``` clojure
;; Example A
(* 3 2 1) ;; 4 atoms
(+ 5 5)   ;; 3 atoms
(- 5 5)   ;; 3 atoms
(sqr 4)   ;; 2 atoms

(* 2 2 (+ 1 1)) ;; 4 atoms or sub-expressions
(+ 1 1 (* 2 2)) ;; 4 atoms or sub-expressions
```

## The first thing is a function

The first thing in an expression must be a function. And everything after is an 
input for that function.

1. If `*`   means multiplication, then `(* 3 2 1)` means `3 * 2 * 1`.
2. If `+`   means addition, then `(+ 5 5)` means `5 + 5`.
3. If `-`   means subtraction, then `(- 5 5)` means `5 - 5`.
4. If `sqr` means to square a number, then `(sqr 4)` means `4` squared.


``` clojure
;; Example A (continued)
(* 3 2 1) ;; → 3 * 2 * 1
(+ 5 5)   ;; → 5 + 5
(- 5 5)   ;; → 5 - 5
(sqr 4)   ;; → 4 * 4

(* 2 2 (+ 1 1)) ;; → 2 * 2 * (1 + 1)
(+ 1 1 (* 2 2)) ;; → 1 + 1 + (2 * 2)
```

## You can have subexpressions inside expressions

The example expression below has 5 things inside. The first atom is a function
for addition, very good, but the rest are sub-expressions which we have to 
evaluate first before we know how to add them up.

``` clojure
;; Example B
(+ (/ 10 10)
   (* 10 10)
   (+ 10 10)
   (- 10 10)
)
```

> Aside: Notice that as long as we have a space between each atom or 
> sub-expression, having any more extra spaces or blank lines is okay.

## Running a Racket program means simplifying expressions

Just like we can simplify or even compute the value of expressions in math, we
can also reduce or simplify expressions and sub-expressions into simpler atoms.

``` clojure
;; Example B (continued)
(+ (/ 10 10) ;; → 1
   (* 10 10) ;; → 100
   (+ 10 10) ;; → 20
   (- 10 10) ;; → 0
)

(+ 1 100 20 0) ;; → 121
```
