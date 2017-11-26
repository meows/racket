#lang racket

(require (rename-in racket/base [define fn]))
(fn -- sub1)

; ------------------------------------------------------------------------------

; nth factorial
;
; linear time recursion
(fn (factorial n [product 1])
    (if (zero? n)
        product
        (factorial (-- n) (* n product))
))
