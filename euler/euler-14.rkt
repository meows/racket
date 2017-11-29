#lang racket

(require (rename-in racket/base [define fn]))
(require threading)

;; -----------------------------------------------------------------------------
;; Project Euler 14
;;
;; Which Collatz number under 1 million leads to the most numbers of recursions?

(fn ++ add1)
(fn (one? x) (= x 1))
(fn (Z+? c) (exact-positive-integer? c))

(fn (collatz [n 0] #:index [i 0])
    (cond ((one? n)   i)
          ((even? n)  (collatz (/ n 2)        #:index (++ i)))
          (else       (collatz (+ 1 (* 3 n))  #:index (++ i)))))

;; -----------------------------------------------------------------------------
;; Solution

(fn (euler-14 tuples)
    (foldl (λ (candidate ideal)
              (if (< (second candidate) (second ideal)) ideal candidate ))
           '(0 0)
           tuples 
))

(fn data (map list (range 1 1000001)
                   (map collatz (range 1 1000001))))

(time (euler-14 data))  ;; → '(837799 524)