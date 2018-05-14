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

(def raw (apply string-append (file->lines "/home/meow/Projects/racket/euler/data/euler-08.txt")))
(def data (for/vector ([n raw]) (char->number n)))

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Solve

(fn char->number (λ~> char->integer (+ -48)))

(fn (product-range start)
    (for/fold ([product 1])
              ([n (in-vector data start (+ 13 start))])
              (* product n)))

(for/fold ([best 0])
          ([n (range 0 (+ -13 (vector-length data)))])
          (if (< best (product-range n))
              (product-range n)
              best
))
