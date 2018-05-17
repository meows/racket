#lang racket

(require (rename-in racket/base [define fn]))
(require (rename-in racket/base [define def]))
(require (only-in srfi/1 unfold-right unfold))
(require (only-in srfi/26 cut))
(require math/number-theory)
(require threading)

(define ++ add1)

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Project Euler
;; Problem 25

; What is the index of the first term in the Fibonacci sequence to contain 1000
; digits?

(fn number-length (λ~> number->string string-length))

(fn (many-digits? n)
    (= 1000 (number-length n)))

(fn (euler-25 n)
    (if (many-digits? (fibonacci n))
        n
        (euler-25 (++ n))))

(time (euler-25 0))
