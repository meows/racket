#lang racket

(require (rename-in racket/base [define fn]))
(require math/number-theory)
(require threading)

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Project Euler
;; Problem 4

(fn (palindrome? n)
    (equal? (number->string n)
            (~> n 
                number->string 
                string->list 
                reverse 
                list->string)))

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Solve

(fn (euler-4)
(for*/fold ([best 0])
           ([i (in-range 100 1000)] [j (in-range 100 1000)])
           (let ([now (* i j)])
                (if (and (< best now) (palindrome? now))
                    current
                    best))))

(time (euler-4))
