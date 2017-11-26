#lang racket

(define (integer->list n #:result [r (list)] #:base [b 10])
   (if (zero? n) r
       (integer->list (quotient n b) 
                      #:result (append* r (modulo n b))
       )
))

(define a (integer->list 0))
(reverse (flatten a))