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

## Base, Power, & Exponentiation

base | exponent | power
---- | -------- | -----
1/2  | 0        | 1/1
1/2  | 1        | 1/2
1/2  | 2        | 1/4
1/2  | 3        | 1/8
1/2  | 4        | 1/16
1/2  | 5        | 1/32
1/2  | 6        | 1/64

base | exponent | power
---- | -------- | -----
2    | 0        | 1
2    | 1        | 2
2    | 2        | 4
2    | 3        | 8
2    | 4        | 16
2    | 5        | 32
2    | 6        | 64

base | exponent | power
---- | -------- | -----
3    | 0        | 1
3    | 1        | 3
3    | 2        | 9
3    | 3        | 27
3    | 4        | 64
3    | 5        | 125
3    | 6        | 216
