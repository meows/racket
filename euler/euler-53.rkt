#lang racket

(require math/number-theory)
(require srfi/26)
(require (rename-in racket/base [define fn]))
(require (rename-in racket/base [define def]))

;; -----------------------------------------------------------------------------
;; Project Euler
;; Problem 53

(def valid-inputs (range 23 101))
(fn ++ add1)
(fn (big? n) (< 1000000 n))

;; --------------------------------------------------------
;; Solve

(def euler
     (for*/fold
         ([i 0])
         ([n valid-inputs] [r (range 1 n)])
         (if (big? (binomial n r))
             (++ i)
             i
)))

(time euler)  ;; → 4075
