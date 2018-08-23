#lang racket

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Project Euler
;; Problem 1

; Find the sum of all naturals under 1000 that's divisible by either 3 or 5.

(for/sum ([n (in-range 1000)]
          #:when (or (zero? (modulo x 3)) 
                     (zero? (modulo x 5))) n))
