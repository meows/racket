#lang racket

(require math/number-theory)
(require srfi/26)
(require (rename-in racket/base [define fn]))
(require (rename-in racket/base [define def]))

;; -----------------------------------------------------------------------------
;; Project Euler
;; Problem 53

(def valid-input (range 23 101))
(def binom (cut binomial n <>))
(def table (map binom (range (add1 n))))
(fn (big? n) (< 1000000 n))

(count big? table)
