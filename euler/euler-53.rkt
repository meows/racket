#lang racket

(require math/number-theory)
(require srfi/26)

(define n 23)
(define valid-input (range 23 101))
(define b (cut binomial n <>))
(define l (map b (range (add1 n))))

(define (big? n) (< 1000000 n))
(count big? l)