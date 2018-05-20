---
id: terms
sidebar_label: terms
hide_title: true
---

# Terms

## Variable

A container for a value saved behind a human-friendly name or atom.

## Variable Assignment

The act of saving information behind a variable.

``` clojure
(define candy 1.50)
(define soda  1.25)
(define chips 0.99)
(define tax   1.0725)
(* tax (+ candy soda chips))
```

Reference: [`define`](define.md)

## Parameter

Parameters are the names of the inputs allowed in your function. In the example 
below, length `l`, width `w`, and height `h` are parameters for the function 
`prism-volume`. One can say that `prism-volume` is a function which accepts 
exactly three parameters.

``` clojure
(define (prism-volume l w h)
        (* l w h)
)
```

Reference: [`define`](define.md)
