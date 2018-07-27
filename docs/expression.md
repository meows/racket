---
id: expression
sidebar_label: Expression
hide_title: true
---

> Work in progress. Do not use yet.

# `(expressions)`

An expression is a list of 1 or more atoms or sub-expressions, where the first
item in the list must be a function, and everything that follows is considered
an input for that function. 

An interesting point about expressions is that all of them must be eventually 
reducible to a value. Racket is all about simplifying or "reducing" expressions
into simpler forms, until you reach a value. It's very similar to the idea of a
mathematical expression.

> A sub-expression is an expression inside of an expression. Otherwise it's not
> special or different versus any other expression.

Here's a simple example of an expression where it's a list of only atoms and no
sub-expression.

``` clojure
(hello i am an expression)
```

``` clojure
(we are all atoms surrounded by parenthesis and separated by spaces)
(+ 1 2 3 4 5)
(this is an expression (+) with (+) sub-expressions (+) inside of us)
(square 3)
((this-better-become-a-function! 10) 1 2 3 4 5)
```

Is this an expression?

``` clojure
)()(          ;; no  - the parentheses aren't contained
())           ;; no  - the parentheses aren't contained
()            ;; no  - the first item in an expression must be a function
(+ a b (+ c)) ;; yes - this expression has 4 atoms or sub-expressions
(() + a b c)  ;; no  - the first sub-expression must be a function
123           ;; yes - atoms count as expressions
true          ;; yes - atoms count as expressions
```

## Lists of expressions have Length

An expression that's also a list is can be counted for the number of things 
inside.

``` clojure
(+ 1 2 3 4 5)                            ;; 6 atoms
(square 3)                               ;; 2 atoms
(+ 1 2 3 4 5 (* 3 2))                    ;; 7 atoms or sub-expressions
((strange) jungle cat (will) eat people) ;; 7 atoms or sub-expressions
(empty? (+))                             ;; 2 atoms or sub-expressions
```

## Things to remember about expressions:

- an expression is either an atom or a list of expressions
- an expression that's a list must have one or more atoms
- the first atom or sub-expression in an expression list must be a function
