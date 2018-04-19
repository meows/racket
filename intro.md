## Making a Function in Racket

## Define

In the two examples below I have defined two very similar functions, `before`
and `after`. Notice that:

* the first list has three items inside: (1) `define`, (2) `(before n)`, and (3) `(after n)`.
* `define` is a keyword that lets you define a function
* `(before n)` is called the function head, and the first item is the name of the function, and any following items are function parameters.

``` clojure
; * Notice that this is a list with 3 items: define, (before n), and (after n).
; * (before n) is called the head of the function
(define (before n)
        (sub1 n))

(define (after n)
        (add1 n))

(before (after 3))  ; → 3
```

# Working with Sequences

## Map

`map` is a function that consumes a list and returns a list the same size.

``` clojure
(map function list)
(map square (range 10))  ; → '(0 1 4 9 16 25 36 49 64 81)
(map add1   (range 10))  ; → '(1 2 3 4 5 6 7 8 9 10)
(map sub1   (range 10))  ; → '(-1 0 1 2 3 4 5 6 7 8)
```

## Filter

`filter` is a function that consumes a list and returns a list of equal or smaller size.

``` clojure
(define (over3? n)
        (< 3 n))

(filter function list)
(filter even?      (range 11))  ; → '(0 2 4 6 8 10)
(filter odd?       (range 11))  ; → '(1 3 5 7 9)
(filter over3?     (range 11))  ; → '(4 5 6 7 8 9 10)
(filter prime?     (range 11))  ; → '(2 3 5 7)
(filter composite? (range 11))  ; → '(2 4 6 8 9 10)
```

## Range

`(range start end skip)` is a function which returns a list of integers.

``` clojure
;; range with only 1 argument
(range 0)   ; → '()
(range 1)   ; → '(0)
(range 2)   ; → '(0 1)
(range 3)   ; → '(0 1 2)
(range 4)   ; → '(0 1 2 3)
(range 10)  ; → '(0 1 2 3 4 5 6 7 8 9)
```

``` clojure
;; range with 2 arguments, start and stop
(range 0 5)    ; → '(0 1 2 3 4)
(range -5 5)   ; → '(-5 -4 -3 -2 -1 0 1 2 3 4)
(range 5 10)   ; → '(5 6 7 8 9)
```

``` clojure
;; range with 3 arguments: (1) start, (2) stop, (3) skip
(range 0 10 2)  ; → '(0, 2, 4, 6, 8)
(range -5 5 2)  ; → '(-5, -3, -1, 1, 3)
```
