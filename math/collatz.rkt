#lang racket

(require (rename-in racket/base [define fn]))

(fn ++ add1)
(fn (one? x) (= x 1))
(fn (unnatural? c) (compose not positive-integer?))

(fn (collatz [n 0] #:index [i 0])
    (cond [(unnatural? n) (error "Input out of range: { n | n ∈ ℤ+ }")]
          [(one? n)       i]
          [(even? n)      (collatz (/ n 2) #:index (++ i))]
          [else           (collatz (+ 1 (* 3 n)) #:index (++ i))]
))
