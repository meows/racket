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
    (let ([t (triangle n)])
         (if (okay? t)
             t
             (euler-12 (++ n)))))

(fn (test)
    (for*/first ([n (in-naturals)]
                 [v (in-value (triangle n))]
                 #:when (okay? v)) v))

(time (euler-12))
