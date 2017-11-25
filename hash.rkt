#lang racket

(define (term constant variable exponent)
        (hash "constant" constant
              "variable" variable
              "exponent" exponent))

(define (term-eval record)
        (let ([c (hash-ref record "constant")]
              [v (hash-ref record "variable")]
              [e (hash-ref record "exponent")])
             (* c (expt v e))))

(define meow (term 3 2 2))

(term-eval meow)
