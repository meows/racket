#lang racket

(define (square x) (* x x))

(define (expmod base exp m)
   (cond 
      ((zero? exp) 1)
      ((even? exp) (modulo (square (expmod base (/ exp 2) m)) m))
      (else 
         (modulo 
            (* base (expmod base (- exp 1) m))
            m
))))
