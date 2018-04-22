---
id: list
sidebar_label: list
hide_title: true
---

##   Expression

An expression means either a list or an [atom](atom.md). But what's a list?

##  List

A list is a sequence of zero or more expressions which are (1) separated by 
spaces and (2) completely surrounded by parenthesis, like below:

  * `(we are all atoms surrounded by parenthesis and separated by spaces)`
  * `(+ 1 2 3 4 5)`
  * `(we are a list () even though () there are lists () inside of us)`
  * `(square 3)`

Is this a list?

``` clojure
)()(            ; no  - it's not fully contained by parenthesis
())             ; no  - it's not fully contained by parenthesis
()              ; yes - this is called an empty list
(() a () b ())  ; yes - this is a list of 5 items, some of which are lists
```

###  Lists have Length

Because a list can be counted, that means we have an idea of where things are, 
including the first or last thing, and it also means that lists have a length, 
which is a number telling us how many things are inside a list:

``` clojure
(+ 1 2 3 4 5)                             ; 6 things in this list
(square 3)                                ; 2 things in this list
(+ 1 2 3 4 5 (* 3 2))                     ; 7 things in this list
((1 2 3) jungle cat (4 5 6) eats people)  ; 6 things in this list
(null? ())                                ; 2 things in this list
```

###  Things to remember about lists:

- a list is sequential because you can count the things inside of it
- a list can have zero or more expressions inside of it
- the expressions inside a list are separated by spaces
- the list with zero expressions is called an *empty list*
- a list has a length, which represents the number of things inside it
