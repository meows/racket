#lang racket

(require (rename-in racket/base [define fn]))
(fn -- sub1)

;; -----------------------------------------------------------------------------

;; nth factorial
;;
;; linear time recursion
(fn (factorial n #:product [p 1])
    (if (zero? n)
        p
        (factorial (-- n) #:product (* n p))
))
