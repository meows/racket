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

(def raw (apply string-append (file->lines "data/euler-08.txt")))
(fn char->number (λ~> char->integer (+ -48)))
(def data (for/vector ([n raw]) (char->number n)))

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Solve

(fn (product-range start)
    (for/fold ([product 1])
              ([n (in-vector data start (+ 13 start))])
              (* product n)))

(for/fold ([best 0])
          ([n (in-range (+ -13 (vector-length data)))])
          (let ([current (product-range n)])
               (if (< current best) best current)))
