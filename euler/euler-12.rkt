#lang racket

(require (rename-in racket/base [define fn]))
(require math/number-theory)
(require threading)
(fn ++ add1)

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Project Euler
;; Problem 12

; What's the first triangle number with over 500 divisors?

(fn (triangle n)
    (* 1/2 (+ n (* n n))))

(fn (okay? n)
    (~> n divisors length (< 500 _)))

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Solve

(fn (euler-12 [n 0])
    (let* ([current (triangle n)])
          (if (okay? current)
              current
              (euler-12 (++ n)))))

(for/first ([n (in-naturals)])

)