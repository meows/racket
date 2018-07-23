---
id: function-very-advanced
title: Very Advanced
hide_title: true
sidebar_label: Functions Advanced
---

## Rest Parameters

There are times when you don't know how many inputs you want your function to
take. For example, let's say you wanted to create a function called `avg` 
which can find the average of all numbers given to you.

> As a reminder, an average, also sometimes called arithmetic mean, is a value 
> which we can calculate from a list of numbers by finding the sum of the list 
> divided by the length of the list.

Unfortunately, to calculate the mean, we need to know exactly how many numbers
someone plans to give us, and we wouldn't want to force people to always give us
a specific amount of inputs, because that would be too limiting. In other words,
we would like:

``` clojure
(avg 3 2 1 0 -1 -2 -3) ;; → 0 
(avg 3 2 1 0 -1)       ;; → 1
(avg 3 2 1)            ;; → 2
(avg 3)                ;; → 3
(avg 3 4 5)            ;; → 4
(avg 3 4 5 6 7)        ;; → 5
(avg 3 4 5 6 7 8 9)    ;; → 6
```

``` clojure
(define (avg n0 . rest)
    (define items (list* n0 rest))
    (/ (apply + items) (length items))
)
```
