---
id: function-sequence
sidebar_label: Over Lists
title: Over Lists
hide_title: true
---

# Functions over Lists and Sequences

## `range`

`range` is a function which returns a list of integers.

`(range start end skip)`

``` clojure
;; range with only 1 input
(range 0)  ;; → '()
(range 1)  ;; → '(0)
(range 2)  ;; → '(0 1)
(range 3)  ;; → '(0 1 2)
(range 4)  ;; → '(0 1 2 3)
(range 10) ;; → '(0 1 2 3 4 5 6 7 8 9)
```

``` clojure
;; range with 2 inputs, start and stop
(range 0 5)  ;; → '(0 1 2 3 4)
(range -5 5) ;; → '(-5 -4 -3 -2 -1 0 1 2 3 4)
(range 5 10) ;; → '(5 6 7 8 9)
```

``` clojure
;; range with 3 inputs: (1) start, (2) stop, (3) skip
(range 0 10 2) ;; → '(0, 2, 4, 6, 8)
(range -5 5 2) ;; → '(-5, -3, -1, 1, 3)
```

## `map`

`map` is a function that takes two inputs, a lambda and a list, and it always 
returns another list of equal size.

``` clojure
(map sqr  (range 10)) ;; → '(0 1 4 9 16 25 36 49 64 81)
(map add1 (range 10)) ;; → '(1 2 3 4 5 6 7 8 9 10)
(map sub1 (range 10)) ;; → '(-1 0 1 2 3 4 5 6 7 8)
```

## `filter`

`filter` is a function that takes two inputs, a lambda and a list, and it always 
returns a list of equal or lesser size.

``` clojure
(define (over3? n) (< 3 n))

(filter even?      (range 10)) ;; → '(0 2 4 6 8)
(filter odd?       (range 10)) ;; → '(1 3 5 7 9)
(filter over3?     (range 10)) ;; → '(4 5 6 7 8 9)
(filter prime?     (range 10)) ;; → '(2 3 5 7)
(filter composite? (range 10)) ;; → '(2 4 6 8 9)
```

What happens if we write a function where everything is `true`?

``` clojure
(define (always-true n) true)
(filter always-true (range 6)) ;; → '(0 1 2 3 4 5)
(filter always-true '(a b c))  ;; → '(a b c)
```

Then `filter` will just give back the original list, cutting nothing out. The
job of `filter` is to ask "how many things do I want to cut out of this list?"
It's the job of your boolean lambda to tell it `false` when you want to cut
things out.

## `apply`

``` clojure
(apply + '(3 2 1)) ;; → (+ 3 2 1) → 6
(apply - '(3 2 1)) ;; → (- 3 2 1) → 0
(apply * '(3 2 1)) ;; → (* 3 2 1) → 6
(apply / '(3 2 1)) ;; → (/ 3 2 1) → 3/2
```
