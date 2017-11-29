#lang racket

(require (rename-in racket/base [define fn]))

;; Project Euler #2
;;
;; Find the sum of all even Fibonacci numbers under 4 million.

; a   - leading fib state tuple
; b   - trailing fib state tuple
; sum - running sum of even fibonacci numbers
(fn (euler-2 [a 1] [b 0] #:sum [s 0])
    (if (< 4000000 a)
        s
        (euler-2 (+ a b)
                 a
                 #:sum (if (even? a) (+ s a) s))))

(time (euler-2))
