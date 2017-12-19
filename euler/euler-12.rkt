#lang racket

(require (rename-in racket/base [define fn]))
(require math/number-theory)
(fn ++ add1)
(fn -- sub1)
(fn (half x) (/ x 2))

;; -----------------------------------------------------------------------------
;; Project Euler 12
;;
;; What's the first triangle number with over 500 divisors?

(fn (triangle n) (* 1/2 (+ n (sqr n))))

(map divisors (map triangle (range 1 20)))