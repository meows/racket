#lang racket

(require (rename-in racket/base [define fn]))

;; Project Euler #2
;;
;; Find the sum of all even Fibonacci numbers under 4 million.

; a   - leading fib state tuple
; b   - trailing fib state tuple
; sum - running sum of even fibonacci numbers
(fn (euler-2 [a 1] [b 0] [sum 0])
    (if (< 4000000 a)
        sum
        (euler-2 (+ a b)
                 a
                 (if (even? a) (+ sum a) sum))))

(time (euler-2))
