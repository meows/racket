#lang racket

(require threading)
(require math/number-theory)

; Project Euler 20
;
; Find the sum of the digits in the number 100!

(define (factorial n [count 1] [product 1])
    (if (> count n)
        product
        (factorial n (+ count 1) (* count product))))

(define (cycle-digits integer index)
    (modulo integer (expt 10 index))
)
