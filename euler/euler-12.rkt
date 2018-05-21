#lang racket

(require (rename-in racket/base [define fn]))
(require math/number-theory)
(require threading)
(fn square sqr)
(fn (half x) (/ x 2))
(fn ++ add1)

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Project Euler
;; Problem 12

; What's the first triangle number with over 500 divisors?

(fn (triangle n) 
    (* 1/2 (+ n (square n)))
)

(fn divisor-count (λ~> divisors length))

(fn (euler-12 [i 0])
    (let* ([current (triangle i)] 
           [okay? (~> current divisor-count (< 500 _))])
          (if okay? current (~> i ++ euler-12)))
)

(euler-12)
