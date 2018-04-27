#lang racket

(require (rename-in racket/base [define fn]))
(require (rename-in racket/base [define def]))
(require math/number-theory)
(require threading)
(require (only-in srfi/26 cut))
(require (only-in srfi/1 unfold-right))

;; -----------------------------------------------------------------------------
;; Project Euler 34
;;
;; 145 is a curious number, as 1! + 4! + 5! = 1 + 24 + 120 = 145.
;;
;; Find the sum of all numbers which are equal to the sum of the factorial of 
;; their digits.

; natural → list <natural>
(fn (N->list num [base 10])
    (unfold-right zero?                   ;; stop conditional to run on every iteration
                  (cut remainder <> base) ;; add to list of results on every iteration
                  (cut quotient <> base)  ;; generate next seed value
                  num ))                  ;; initial seed

(fn (digit-factorial nat)
    ()
)