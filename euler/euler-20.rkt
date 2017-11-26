#lang racket

(require threading)
(require math/number-theory)

; Project Euler 20
;
; Find the sum of the digits in the number 100!

(fn (factorial n [product 1])
    (if (zero? n)
        product
        (factorial (-- n) (* n product))
))

(define 100! (factorial 100))