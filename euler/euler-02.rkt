#lang racket

(require (rename-in racket/base [define fn]))
(require (rename-in racket/base [define def]))
(require math/number-theory)
(require threading)
(require (only-in srfi/26 cut))
(require (only-in srfi/1 unfold-right))

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Project Euler
;; Problem 2

;; Find the sum of all even Fibonacci numbers under 4 million.

(def max 4000000)

; a   - leading fib state tuple
; b   - trailing fib state tuple
; sum - running sum of even fibonacci numbers
(fn (euler-2 [a 1] [b 0] #:sum [sum 0])
    (if (< max a) 
        sum
        (euler-2 (+ a b) a #:sum (if (odd? a) sum (+ sum a)))))

(time (euler-2))
