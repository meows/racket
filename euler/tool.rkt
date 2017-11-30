#lang racket

(require (rename-in racket/base [define fn]))
(require threading)

;; -----------------------------------------------------------------------------
;; Numerical

(fn (Z+->list n #:result [r (list)] #:base [b 10])
    (if (zero? n) 
        (reverse r)
        (Z+->list (quotient n b) 
                  #:result (append r (list (modulo n b))))))

(fn (diff l)
    (map - 
         (cdr l)
         (drop-right l 1)))

(fn (diff-count l #:count c #:prior p)
    (if (zero? (diff l))
        
    )
)

(fn (triangle n)
    (/ (+ (sqr n) n) 2)
)

;; ---------------------------------
;; Boolean

(fn (Z+? c) (positive-integer? c))
(fn (one? x) (= x 1))

;; ---------------------------------
;; Arithmetic

(fn -- sub1)
(fn ++ add1)
(fn (double x) (+ x x))
(fn (half x) (/ x 2))
