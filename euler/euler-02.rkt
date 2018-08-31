#lang racket

(require (rename-in racket/base [define fn]))
(require math/number-theory)
(require threading)
(require (only-in srfi/26 cut))
(require (only-in srfi/1 unfold-right))

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Project Euler
;; Problem 2

; Find the sum of all even Fibonacci numbers under 4 million.

(define MAX 4000000)

; We can think of a non-naive solution by observing that the even Fibonacci 
; terms have an interesting relationship among each other. If fibEven is a
; function which defines the complete sequence of even Fibonacci numbers, then:
;
; fibEven(0) = 2
; fibEven(1) = 8
; fibEven(n) = 4 * fib(n-1) + fib(n-2)

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Solve

; s   - trailing fib state tuple
; s++ - leading fib state tuple
; sum - running sum of even fibonacci numbers
(fn (euler [s 2] [s++ 8] #:sum [sum 2])
    (if (< MAX s++)
        sum
        (euler s++ 
               (+ s (* 4 s++))
               #:sum (+ sum s++))))

(time (euler))
