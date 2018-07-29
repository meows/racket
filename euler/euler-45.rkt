#lang racket

(require (rename-in racket/base [define fn]))

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Project Euler
;; Problem 45

;; Given that (triangle 285) === (pentagon 165) === (hexagon 143) === 40755.
;;
;; Find the next triangle number after 40755 that's both pentagonal and 
;; hexagonal.

(fn (triangle n)
    (* 1/2 n (+ n 1)))

(fn (pentagon n)
    (+ (* 3/2 n n)
       (* -1/2 n)))

(fn (hexagon n)
    (+ (* 2 n n)
       (- n)))

(fn (pentagonal? n)
    (natural? (* 1/6 (+ 1 (sqrt (+ 1 (* 24 n)))))))

(for*/first ([n (in-naturals 144)] 
             [v (in-value (hexagon n))] #:when (pentagonal? v))
            v)