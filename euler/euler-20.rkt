#lang racket

(require threading)
(require math/number-theory)
(require (rename-in racket/base [define fn]))

; Project Euler 20
;
; Find the sum of the digits in the number 100!

(define -- sub1)

(fn (factorial n [product 1])
    (if (zero? n)
        product
        (factorial (-- n) (* n product))
))

(fn (Z+->list n #:result [r (list)] #:base [b 10])
    (if (zero? n) 
        (reverse r)
        (Z+->list (quotient n b) 
                  #:result (append r (list (modulo n b))))))

(fn euler-20 
    (~> (factorial 100)
        Z+->list
        (apply + _)
    )
)