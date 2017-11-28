#lang racket

(require (rename-in racket/base [define fn]))
(require threading)

;; -----------------------------------------------------------------------------
;; Numerical

(define (Z+->list n #:result [r (list)] #:base [b 10])
    (if (zero? n) 
        (reverse r)
        (Z+->list (quotient n b) 
                  #:result (append r (list (modulo n b))))))

;; ---------------------------------
;; Boolean

(fn (Z+? c) (exact-positive-integer? c))
(fn (one? x) (= x 1))

;; ---------------------------------
;; Arithmetic

(fn -- sub1)
(fn ++ add1)
(fn (double x) (+ x x))
(fn (half x) (/ x 2))

;; ---------------------------------
;; Meta

; finds length of Z+
; Z+length :: Z+ -> Z+
(fn (Z-length n #:base [b 10] #:index [i 0])
    (cond ((~> (+ n i) zero?) 1)
          ((zero? n) i)
          ((Z+length (quotient n b) #:index (++ i)))
))