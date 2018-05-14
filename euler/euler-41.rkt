#lang racket

(require (rename-in racket/base [define fn]))
(require (rename-in racket/base [define def]))
(require (only-in srfi/26 cut))
(require threading)
(require (except-in math/number-theory permutations))

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Project Euler
;; Problem 41

; What is the largest n-digit pandigital prime that exists?

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Solve

(fn ++ add1)
(fn all-unique? (compose not check-duplicates))

(fn (lists->naturals lst-of-digits)
    (map (λ~> (map number->string _) string-append* string->number)
         lst-of-digits))
         ;;; (λ (digits) (string->number (string-append* (map number->string digits))))

(def lst-of-permutations (permutations (range 1 8)))

(~> lst-of-permutations
    lists->naturals
    (filter prime? _)
    (apply max _)
)
