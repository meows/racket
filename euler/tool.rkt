#lang racket

(define (Z+->list n #:result [r (list)] #:base [b 10])
    (if (zero? n) 
        (reverse r)
        (Z+->list (quotient n b) 
                  #:result (append r (list (modulo n b))))))

