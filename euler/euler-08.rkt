#lang racket

(require (rename-in racket/base [define fn]))
(require (rename-in racket/base [define def]))
(require math/number-theory)
(require (only-in srfi/26 cut))
(require (only-in srfi/1 unfold-right unfold))
(require threading)

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Project Euler
;; Problem 8

(define RAW  (apply string-append (file->lines "data/euler-08.txt")))
(define DATA (for/vector ([n RAW]) (~> n char->integer (- 48))))

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Solve

(fn (product-range start)
    (for/product ([n (in-vector DATA start (+ start 13))]) n))

(for/fold ([best 0])
          ([n (in-range (+ -13 (vector-length DATA)))])
          (let ([current (product-range n)])
               (if (< current best) best current)))
