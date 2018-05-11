---
id: expression
sidebar_label: Expression
hide_title: true
---

> Work in progress. Do not use yet.

##   Expression

An expression means either (1) an atom, or (2) a list of one or more expressions,
separated by spaces and surrounded by parenthesis.

  * `(we are all atoms surrounded by parenthesis and separated by spaces)`
  * `(+ 1 2 3 4 5)`
  * `(we are a list () even though () there are lists () inside of us)`
  * `(square 3)`

Is this an expression?

``` clojure
)()(          ;; no  - it's not fully contained by parenthesis
())           ;; no  - it's not fully contained by parenthesis
()            ;; yes - this is called an empty list
(+ a () b ()) ;; yes - this is a list of 5 items, some of which are also lists
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
