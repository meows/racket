#lang racket

(require (rename-in racket/base [define fn]))
(fn -- sub1)
(fn (one? n) (= 1 n))

;; -----------------------------------------------------------------------------

;; nth factorial
(fn (factorial n #:product [p 1])
    (if (zero? n)
        p
        (factorial (-- n) #:product (* n p))))

(fn (fact n) 
    (if (zero? n) 
        1
        (* n (factorial (-- n)))))

(time (factorial 100000))
