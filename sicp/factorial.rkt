#lang racket

; nth factorial
;
; linear time recursion
(require (rename-in racket/base [define fn]))

(fn -- sub1)

(fn (factorial n [product 1])
    (if (zero? n)
        product
        (factorial (-- n) (* n product))))
