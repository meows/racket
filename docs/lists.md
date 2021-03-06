---
id: lists
sidebar_label: Lists
hide_title: true
---

# Organizing Information

A data structure is a way for you to store information. In order to imagine
different ways in which we might store data, imagine if you were given a very
messy paper of first names. They're not even in alphabetical order:

```
Ryan Oliver Norman Lee Iris George Ellen Bob Dennis Allen Charity Irene
Jonathan Calvin Alice Frank Henry Jen Mike Patricia Roy Joseph Patrick
```

If I asked you to store these disorganized names on the computer using Racket,
how might you do so? Would you store every single name in a variable?

``` clojure
(define a "Ryan")
(define b "Oliver")
(define c "Norman")
(define d "Lee")
;; and so on...
```

As you can see, this gets exhausting pretty quickly, because what if you wanted
to store over 1000 items? As it happens, Racket has a way for you to store any
amount of information you want in a sequence (with the familiar limitation that
your computer has to have enough memory).

## A little warning:

Previously in Racket, whenever you had a sequence of things in parentheses,
which we called [*expressions*](expression.md), Racket would assume that the 
first atom is a function and that the rest of the items were inputs. Like this:

``` clojure
(* 10 10 10 0)
```

## Lists

A list is a way for you to store zero to `n` things as a sequence, which you can
later access by knowing its sequential position, or _index_ number. Here are
some examples of ways to create lists:

``` clojure
;; these are all equal to '(1 2 3)
(define a (list 1 2 3))
(define b '(1 2 3))
(define c (cons 1 (cons 2 (cons 3 '()))))

(equal? a a) ;; → true
(equal? a b) ;; → true
(equal? a c) ;; → true

;; these are all equal to '("meow" 1 2 3)
(define d (list "meow" 1 2 3))
(define e (append '("meow") a))
(define f (cons "meow" a))

(equal? d d) ;; → true
(equal? d e) ;; → true
(equal? d f) ;; → true
```

### `list`

`list` is a function which can allow you to build any kind of list, and it takes
any number of inputs, even no input at all. You can make a list of just about
anything, and lists can be empty.

``` clojure
(list)        ;; a list with 0 items
(list 3)      ;; a list with 1 item
(list 3 1)    ;; a list with 2 items
(list (list)) ;; a list with 1 item -- another list!
```

### `length`

To ask how many items are inside a list, we use `length`:

``` clojure
(length (list))            ;; → 0
(length (list 3))          ;; → 1
(length (list 3 3))        ;; → 2
(length (list (list) 3 4)) ;; → 3
(length (list 3 4 (list))) ;; → 3
```

### `sequence-ref` (finding by position)

`sequence-ref` is a function that takes two inputs, `lst` and `pos`, and returns the
value of whatever is found on list `lst` at index position `pos`. If you happen
to know the index number of the item you're looking for, then `list-ref` is the
right function to use.

| parameter | description
| --------- | -----------
| `lst`     | any non-empty list
| `pos`     | a natural number indicating index position
| ► Return  | the value found on `lst` at `pos`

``` clojure
(define names 
   (list "Ryan" "Oliver" "Norman" "Lee" "Iris" "George" "Ellen" "Bob" "Dennis" 
      "Allen" "Charity" "Irene" "Jonathan" "Calvin" "Alice" "Frank" "Henry" 
      "Jen" "Mike" "Patricia" "Roy" "Joseph" "Patrick"
   )
)

(empty? names)      ;; → false -- list is not empty
(list?  names)      ;; → true
(length names)      ;; → 23

(first names)       ;; → "Ryan"
(last  names)       ;; → "Patrick"
(rest  names)       ;; returns the list in names but with "Ryan" removed.

(sequence-ref names 0)  ;; → "Ryan"
(sequence-ref names 1)  ;; → "Oliver"
(sequence-ref names 2)  ;; → "Norman"
(sequence-ref names 20) ;; → "Roy"
(sequence-ref names 21) ;; → "Joseph"
(sequence-ref names 22) ;; → "Patrick"
(sequence-ref names 23) ;; → Error: index too large for list!
```
