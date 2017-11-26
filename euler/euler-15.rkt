#lang racket

(define (grid n)
   (/ (factorial (+ n n))
      (sqr (factorial n))
   )
)

(define euler-15 (grid 20))