#lang racket

(require (rename-in racket/base [define fn]))
(require (rename-in racket/base [define def]))

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Project Euler
;; Problem 1

;; Give the sum of all integers between 1 to 1000 that's divisible by either 3 
;; or 5.

(fn (euler-01 max)
    (fn (okay? x)
        (or (zero? (modulo x 3))
            (zero? (modulo x 5))))
    (for/sum ([n (range max)] #:when (okay? n)) n))

(time (euler-01 1000))
