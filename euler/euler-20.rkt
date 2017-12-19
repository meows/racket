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

; natural → list <digits>
(fn (N->list nat #:base [base 10])
    (fn (loop nat #:result [result '()])
        (if (zero? nat)
            result
            (let-values ([(quo rem) (quotient/remainder nat base)])
                        (loop quo #:result (cons rem result)))))
    (if (zero? nat) '(0) (loop nat)))

;; -----------------------------------------------------------------------------
;; Solution

(fn euler-20 (apply + (natural->list (factorial 100))))

euler-20  ;; → 648