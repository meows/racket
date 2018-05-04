#lang racket

(require (rename-in racket/base [define fn]))
(require (rename-in racket/base [define def]))
(require (only-in srfi/26 cut))
(require racket/trace)

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Project Euler
;; Problem 6

; Find the difference between the sum of the squares of the first one hundred 
; natural numbers and the square of the sum.

(def square sqr)
(def square-of-sum (square (apply + (range 1 101))))
(def sum-of-squares (apply + (map square (range 1 101))))

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Solve

(def euler-06 (- square-of-sum sum-of-squares))
