#lang racket

(require math/number-theory)
(require threading)
(require (rename-in racket/base [define fn]))
(require (only-in srfi/26 cut))

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Project Euler
;; Problem 24

(define 0to9 (in-permutations (range 10)))

(for/first ([n (in-naturals)] 
            [perm 0to9] 
            #:when (= n 1000000)) perm)
