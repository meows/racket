#lang racket

(require (rename-in racket/base [define fn]))
(require (rename-in racket/base [define def]))
(require math/number-theory)
(require threading)
(require srfi/26)

;; -----------------------------------------------------------------------------
;; Project Euler 34
;;
;; 145 is a curious number, as 1! + 4! + 5! = 1 + 24 + 120 = 145.
;;
;; Find the sum of all numbers which are equal to the sum of the factorial of 
;; their digits.

; natural → list <natural>
(fn (N->list n #:base [base 10])
    (fn (loop n #:result [result '()])
        (if (zero? n)
            result
            (let-values ([(quo rem) (quotient/remainder n base)])
                        (loop quo #:result (cons rem result)))))
    (if (zero? n) '(0) (loop n)))

;;; (fn (digits->list num [base 10])
;;;     (unfold-right zero? (cut remainder <> base) 
;;;                         (cut quotient <> base) 
;;;                         num))

(define a 901231231401)
(define b 204914019415)

(time N->list a)