#lang racket

(require math/number-theory)
(require (rename-in racket/base [define fn]))
(require (rename-in racket/base [define def]))

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Project Euler
;; Problem 11

(define source "data/euler-11.txt")
(define raw (map (λ (str) (string-split str " "))
                 (file->lines source)))

; (for/fold ([state '()])
;           ([i (in-range 2 100)] [j (in-range 1 100)])
;           (cons (list i j) state)
; )

(define lines
   (map (λ (line) (map string->number line)) 
        raw))

lines