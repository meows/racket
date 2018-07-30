#lang racket

(require (rename-in racket/base [define fn]))
(require (rename-in racket/base [define def]))
(require math/number-theory)
(require threading)
(require (only-in srfi/26 cut))
(require (only-in srfi/1 unfold-right))

(fn -- sub1)

(fn (fib n)
    (fn (loop a b u v count)
        (cond [(= count 0) b]
              [(even? count) (loop a 
                                   b
                                   (+ (square u) (square v))
                                   (+ (square v) (* 2 u v))
                                   (* 1/2 count))]
              [else (loop (+ (* b v) (* a v) (* a u))
                          (+ (* b u) (* a v))
                          u
                          v
                          (-- count))]))
    (loop 1 0 0 1 n)
)

(fn (fib n)
    (cond [(zero? n) 0]
          [(one? n)  1]
          [else (+ (fib (+ n -1)) 
                   (fib (+ n -2)))])
)
