#lang racket

(require (rename-in racket/base [define fn]))

(fn (gcd n1 n2)
    (if (zero? n2)
        n1
        (gcd n2 (remainder n1 n2))))
