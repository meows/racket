#lang racket

(require (rename-in racket/base [define fn]))
(require (rename-in racket/base [define def]))
(require math/number-theory)
(require (only-in srfi/26 cut))

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Project Euler
;; Problem 7

; What is the 10,001st prime number?

(fn (euler-7 [max 10001])
    (for/fold ([seen 0] [current 0] #:result current)
              ([n (range 2 +inf.0)] #:when (prime? n) #:break (= seen max))
              (values (add1 seen) n))
)

(time (euler-7))
