#lang racket

(require (rename-in racket/base [define fn]))

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Project Euler
;; Problem 20

; Find the sum of the digits in the number 100!

(fn -- sub1)

; finds the nth factorial
(fn (factorial n #:product [p 1])
    (if (zero? n)
        p
        (factorial (-- n) #:product (* n p))))

; natural → list <digits>
(fn (N->list num [base 10])
    (unfold-right zero?
                  (cut remainder <> base)
                  (cut quotient <> base)
                  num ))

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Solution

(fn euler-20 
    (apply + (natural->list (factorial 100))))

euler-20  ;; → 648
