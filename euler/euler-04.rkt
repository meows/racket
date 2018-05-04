#lang racket

(require (rename-in racket/base [define fn]))
(require (rename-in racket/base [define def]))
(require math/number-theory)
(require threading)
(require (only-in srfi/26 cut))
(require (only-in srfi/1 unfold-right unfold))
(require plot)

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Project Euler
;; Problem 4

(fn (palindrome? n)
    (equal? (number->string n)
            (~> n number->string string->list reverse list->string)))

(def (euler-4)
     (for*/fold ([best 0])
                ([i (range 100 1000)] [j (range 100 1000)])
                (let ([candidate (* i j)])
                     (if (and (< best candidate) (palindrome? candidate)) 
                         candidate 
                         best))))

(time (euler-4))
