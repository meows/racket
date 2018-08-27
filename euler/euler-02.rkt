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

; s   - trailing fib state tuple
; s++ - leading fib state tuple
; sum - running sum of even fibonacci numbers
(fn (euler-2 [s 0] [s++ 1] #:sum [sum 0])
    (if (< max s++)
        sum
        (euler-2 s++ (+ s s++) 
                 #:sum (if (odd? s++) sum (+ sum s++)))))

(define (alt)
    (for/fold ([s 0] [s++ 1] [sum 0] #:result sum)
              ([n (in-naturals)] #:break (< max s++))
              (values s++
                      (+ s s++)
                      (if (odd? s++) sum (+ sum s++)))))

(time (euler-2))
(time (euler-2))
(time (euler-2))
(time (euler-2))
(time (alt))
(time (alt))
(time (alt))