#lang racket

(require (rename-in racket/base [define fn]))
(require math/number-theory)

;; -----------------------------------------------------------------------------
;; Project Euler 15

;; Pathways through a 2-dimensional square grid from one corner to its opposite diagonal corner.

(fn (grid n)
    (/ (factorial (+ n n))
       (sqr (factorial n)))
)

(fn (euler-15) (grid 20))
(euler-15)  ;; → 137846528820