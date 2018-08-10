#lang racket

(require math/number-theory)
(require threading)
(require (rename-in racket/base [define fn]))
(require (rename-in racket/base [define def]))

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Project Euler
;; Problem 74

; natural → list <natural>
(fn (N->list num #:base [base 10])
    (unfold-right zero?
                  (cut remainder <> base)
                  (cut quotient <> base)
                  num))

(define max 1000000)

(fn table-factorial
    (for/vector ([n (range 10)])
                (factorial n)))

; next Digit Factorial Chain
(fn (next-chain n) (apply + (map (curry vector-ref table-factorial) (N->list n))))

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Solve

(fn (n->chain nat)
    (fn (loop n)
    
    )
)