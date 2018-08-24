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
    (~> n divisors length (< 500 _ )))

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Solve

(fn (euler [p 0] [v 1])
    (if (okay? p)
        p
        (euler (+ p v) (++ v))))

(fn (test)
    (for*/first ([n (in-naturals)]
                 [v (in-value (triangle n))]
                 #:when (okay? v)) v))

(fn (alt)
    (for/fold ([p 0] [v 1] #:result now)
              ([n (in-naturals)] #:break (okay? p))
              (values (+ p v) 
                      (++ v))))
