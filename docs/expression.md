---
id: expression
sidebar_label: Expression
hide_title: true
---

> Work in progress. Do not use yet.

##   Expression

An expression means either:
  1. An atom. 
  2. A list of one or more expressions, separated by spaces and surrounded by 
     parenthesis, where the first item in a list must be a function.

For example,

``` clojure
(we are all atoms surrounded by parenthesis and separated by spaces)
(+ 1 2 3 4 5)
(this is an expression (+) even though (+) there are expressions (+) inside of us)
(square 3)
(() + 1 2) ; this isn't an expression because the first atom isn't a function
```

Is this an expression?

``` clojure
)()(          ;; no  - the parentheses aren't contained
())           ;; no  - the parentheses aren't contained
()            ;; no  - the first item in an expression-list must be a function
(+ a b (+ c)) ;; yes - this is a list of 4 items
(() + a b c)  ;; no  - the first item isn't an expression-list
123           ;; yes - atoms count as expressions
true          ;; yes - atoms count as expressions
```

###  Lists have Length

An expression that's also a list is can be counted for the number of things 
inside.

``` clojure
(+ 1 2 3 4 5)                            ;; 6 things in this list
(square 3)                               ;; 2 things in this list
(+ 1 2 3 4 5 (* 3 2))                    ;; 7 things in this list
((strange) jungle cat (will) eat people) ;; 6 things in this list
(empty? ())                              ;; 2 things in this list
```

###  Things to remember about expressions:

- an expression is either an atom or a list of expressions
- an expression that's a list must have one or more atoms
- the first atom in an expression list must be a function
