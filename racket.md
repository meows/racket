# clojure Language (untyped)

## Expressions and sub-expressions

clojure consists of symbols surrounded by parenthesis. These parenthesis may
contain a value, or if it's not a value, then it's either a (1) *redex*, or
reducible expression, or (2) it's a *continuation*, which is the evaluation
context surrounding an expression.

Observe the expression below:

``` clojure
; original statement
(- 4 (+ 1 1))

; the redex, which may be reduced to the value 2
(+ 1 1)

; the continuation, where [] represents the redex
(- 4 [])
```

## Binding to Variables

### Binding Functions or Procedures

``` clojure
(define (name arg-1 arg-2 arg-3 arg-n)
  (body "that is reducible to a value")
)

; more realistically,
(define (volume-of-prism x y z)
  (* x y z)
)

(volume-of-prism 3 4 5) ; -> 60

; or with an anonymous function / lambda:
(define (volume-of-prism x y z)
   (λ ([x x] [y y] [z z]) (* x y z))
)
```

### Binding Values or Reducible Expressions

``` clojure
(define pi 3.14)
pi -> 3.14
```

## Conditionals

``` clojure
(define neg-or-even )
```
