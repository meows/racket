#lang racket

(require (rename-in racket/base [define fn]))
(require (rename-in racket/base [define def]))
(require (only-in srfi/1 unfold-right unfold))
(require (only-in srfi/26 cut))
(require math/number-theory)
(require threading)

(fn -- sub1)
(fn one? (curry = 1))

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Exponentiation

(fn (exp base power)
    (cond [(one? power) base]
          [(even? power) (exp (* base base) (* 1/2 power))]
          [else (* base (exp base (-- power)))]
    )
)
