#lang racket

(require (rename-in racket/base [define fn]))
(require (rename-in racket/base [define def]))
(require (only-in srfi/1 unfold-right unfold))
(require (only-in srfi/26 cut))
(require math/number-theory)
(require threading)

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

(fn (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))

(fn (fixed-point f first-guess)
    (fn (try guess)
       (let ([next (f guess)])
            (if (close-enough? guess next)
                next
                (try next))))

    (try first-guess)
)
