#lang racket

(require (rename-in racket/base [define fn]))
(require (rename-in racket/base [define def]))

(define (euclid-triple m n)
   (list (+ (* m m) (* -1 n n))
         (* 2 m n)
         (+ (* m m) (* n n))
   )
)

(fn (triangular? a b c)
    (equal? (+ (* a a) (* b b)) 
            (* c c)))
