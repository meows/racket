---
id: expression
sidebar_label: Expression
hide_title: true
---

> Work in progress. Do not use yet.

##   Expression

An expression means either:
  1. An atom. 
  2. A list of one or more atoms or sub-expressions, separated by spaces and 
     surrounded by parentheses, where the first sub-expression in a list must be 
     a function.

For example,
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

###  Lists have Length

An expression that's also a list is can be counted for the number of things 
inside.

``` clojure
(+ 1 2 3 4 5)                            ;; 6 atoms
(square 3)                               ;; 2 atoms
(+ 1 2 3 4 5 (* 3 2))                    ;; 7 atoms or sub-expressions
((strange) jungle cat (will) eat people) ;; 7 atoms or sub-expressions
(empty? (+))                             ;; 2 atoms or sub-expressions
```

###  Things to remember about expressions:

- an expression is either an atom or a list of expressions
- an expression that's a list must have one or more atoms
- the first atom or sub-expression in an expression list must be a function
