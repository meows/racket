---
id: data-structures
sidebar_label: Data Structures
hide_title: true
---

# Data Structures

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

## Lists

A list is a way for you to store zero to `n` things as a sequence, which you can
later access by knowing its sequential position, or _index_ number. Here are
some examples of ways to create lists:

``` clojure
;; these are all equal to '(1 2 3)
(define a (list 1 2 3))
(define b '(1 2 3))
(define c (cons 1 (cons 2 (cons 3 '()))))

(equal? a a)  ;; → true
(equal? a b)  ;; → true
(equal? a c)  ;; → true

;; these are all equal to '("meow" 1 2 3)
(define d (list "meow" 1 2 3))
(define e (append '("meow") a))
(define f (cons "meow" a))

(equal? d d)  ;; → true
(equal? d e)  ;; → true
(equal? d f)  ;; → true
```

### `list-ref` (finding by index)

`list-ref` is a function that takes two inputs, `lst` and `pos`, and returns the
value of whatever is found on list `lst` at index position `pos`. If you happen
to know the index number of the item you're looking for, then `list-ref` is the
right function to use.

| parameter | description
| --------- | -----------
| `lst`     | any non-empty list
| `pos`     | a natural number indicating index position
| ► Return  | the value found on `lst` at `pos`

``` clojure
(define names (list "Ryan" "Oliver" "Norman" "Lee" "Iris" "George" "Ellen" "Bob"
   "Dennis" "Allen" "Charity" "Irene" "Jonathan" "Calvin" "Alice" "Frank"
   "Henry" "Jen" "Mike" "Patricia" "Roy" "Joseph" "Patrick"))

(empty? names)      ;; → false -- list is not empty
(list? names)       ;; → true
(length names)      ;; → 23

(first names)       ;; → "Ryan"
(list-ref names 0)  ;; → "Ryan"
(list-ref names 1)  ;; → "Oliver"
(list-ref names 2)  ;; → "Norman"

(list-ref names 20) ;; → "Roy"
(list-ref names 21) ;; → "Joseph"
(list-ref names 22) ;; → "Patrick"
(last names)        ;; → "Patrick"

(list-ref names 23) ;; → Error: index too large for list!
```