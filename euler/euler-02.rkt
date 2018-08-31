#lang racket

(require (rename-in racket/base [define fn]))
(require math/number-theory)
(require threading)
(require (only-in srfi/26 cut))
(require (only-in srfi/1 unfold-right))

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Project Euler
;; Problem 2

;; Find the sum of all even Fibonacci numbers under 4 million.

(define MAX 4000000)

; s   - trailing fib state tuple
; s++ - leading fib state tuple
; sum - running sum of even fibonacci numbers
(fn (euler-0 [s 2] [s++ 8] #:sum [sum 2])
    (if (< max s++)
        sum
        (euler-0 s++ 
                 (+ s (* 4 s++))
                 #:sum (+ sum s++))))

(time (euler-0))
