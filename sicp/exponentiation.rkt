#lang racket

; Fermat's Little Theorem
;
; let n = prime number
; let a = integer less than n
; a^n === a mod n
;

(define (square n) (* n n))

(define (exp base n)
   (cond ((zero? n) 1)
         ((even? n) (square (exp base (/ n 2))))
         (else (* base (exp base (- n 1))))))

(define (expmod base exp mod)
   (cond ((zero? exp) 1)
         ((even? exp) (modulo (square (expmod base (/ exp 2) mod)) mod))
         (else (modulo (* base (expmod base (- exp 1) mod)) mod))))
