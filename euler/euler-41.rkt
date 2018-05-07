#lang racket

(require (rename-in racket/base [define fn]))
(require (rename-in racket/base [define def]))
(require (only-in srfi/26 cut))
(require threading)

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Project Euler
;; Problem 41

; What is the largest n-digit pandigital prime that exists?

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Solve

(fn ++ add1)
(fn all-unique? (compose not check-duplicates))

(fn (lists->naturals lst-of-digits)
    (map (λ (digits)
            (string->number (string-append* (map number->string digits))))
         lst-of-digits))

(def lst-of-permutations (permutations (range 10)))
(time (~> lst-of-permutations
    lists->naturals
    length
))
