---
id: exam
sidebar_label: exam
hide_title: true
---

## Terms

1. What is a variable?
2. What is variable assignment?
3. What is a function?

## Triangle

Define a function called `gravity-angle` which tells you how much gravitational 
force is at any angle `θ` of direction.

``` clojure
(define (gravity-angle θ)
        (* 9.8 (cos θ))
)
```
