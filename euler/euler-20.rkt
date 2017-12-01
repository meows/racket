#lang racket

(require (rename-in racket/base [define fn]))

;; -----------------------------------------------------------------------------
;; Project Euler 20
;;
;; Find the sum of the digits in the number 100!

(fn -- sub1)

; finds the nth factorial
(fn (factorial n [product 1])
    (if (zero? n)
        product
        (factorial (-- n) (* n product))))

; turns positive integer into list of digits
(fn (counting->list n #:base [b 10] #:result [r (list)])
    (if (zero? n) 
        (reverse r)
        (counting->list (quotient n b) 
                        #:result (append r (list (modulo n b))))))

;; -----------------------------------------------------------------------------
;; Solution

(fn (euler-20) (apply + (counting->list (factorial 100))))

(euler-20)  ;; → 648