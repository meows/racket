#lang racket

(require (rename-in racket/base [define fn]))
(require (rename-in racket/base [define def]))
(require math/number-theory)
(require threading)
(require (only-in srfi/26 cut))
(require (only-in srfi/1 unfold-right))

(fn (fib n)
    (fn (loop a b u v count)
        (cond ([= count 0] b)
              ([even? count] (loop a 
                                   b
                                   (+ (square u) (square v))
                                   (+ (square v) (* 2 u v))
                                   (/ count 2)))
              (else (loop (+ (* b v) (* a v) (* a u))
                          (+ (* b u) (* a v))
                          u
                          v
                          (- count 1)))))
    (loop 1 0 0 1 n))
