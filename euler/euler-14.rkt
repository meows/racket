#lang racket

(require (rename-in racket/base [define fn]))
(require threading)

;; -----------------------------------------------------------------------------
;; Project Euler 14
;;
;; Which Collatz number under 1 million leads to the most numbers of recursions?

(fn -- sub1)
(fn ++ add1)
(fn (one? x) (= x 1))
(fn (Z+? c) (exact-positive-integer? c))

(fn (collatz [n 0] #:index [i 0])
    (cond ((~> n Z+? not)  ("Input out of range: { n | n ∈ Z+ }"))
          ((one? n)        i)
          ((even? n)       (collatz (/ n 2)        #:index (++ i)))
          (else            (collatz (+ 1 (* 3 n))  #:index (++ i)))
))

(fn data 
    (map list (range 1 100)
              (map collatz (range 1 100))))

(euler-14 data)