#lang racket

(require (rename-in racket/base [define fn]))
(require (rename-in racket/math [sqr square]))
(require math/number-theory)

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Project Euler
;; Problem 15

; Pathways through a 2-dimensional square grid from one corner to its opposite 
; diagonal corner.

(fn (grid n)
    (/ (factorial (+ n n))
       (square (factorial n))))

(fn euler-15 (grid 20))

(time euler-15)  ;; → 137846528820
