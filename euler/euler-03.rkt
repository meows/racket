#lang racket

; Project Euler 3
;
; What's the largest prime factor of 600,851,475,143?

(require math/number-theory)
(require threading)

(define euler-03 (apply max (prime-divisors 600851475143))