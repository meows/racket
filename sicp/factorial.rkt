#lang racket

; nth factorial
;
; linear time recursion

(define -- sub1)

(define (factorial n [product 1])
    (if (zero? n)
        product
        (factorial (-- n) (* n product))))
