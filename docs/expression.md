---
id: expression
sidebar_label: Expression
hide_title: true
---

> Work in progress. Do not use yet.

##   Expression

An expression means either:
   1. An atom, or 
   2. An expression-list, which is of one or more expressions, separated by 
      spaces and surrounded by parenthesis.

  * `(we are all atoms surrounded by parenthesis and separated by spaces)`
  * `(+ 1 2 3 4 5)`
  * `(we are a list (+) even though (+) there are expression-lists (+) inside of us)`
  * `(square 3)`

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

###  Expressions have Length

Because a list can be counted, that means we have an idea of where things are, 
including the first or last thing, and it also means that lists have a length, 
which is a number telling us how many things are inside a list:

``` clojure
(+ 1 2 3 4 5)                            ;; 6 things in this list
(square 3)                               ;; 2 things in this list
(+ 1 2 3 4 5 (* 3 2))                    ;; 7 things in this list
((1 2 3) jungle cat (4 5 6) eats people) ;; 6 things in this list
(empty? ())                              ;; 2 things in this list
```

###  Things to remember about expressions:

- an expression can have zero or more expressions inside of it
- a list is sequential, meaning the things inside are lined up one after another
- a list can also be counted, so you know the number of things inside
- the expressions inside a list are separated by spaces
- the list with zero expressions is called an *empty list*
