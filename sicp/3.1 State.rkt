#lang racket

(define (make-account balance)
    (λ (amount)
        (if (>= balance amount))
            (begin (set! balance (- balance amount)) balance)
            "Insufficient funds."
    ))


; Why is <balance> not garbage collected after evaluation?

(define (rooming nights [3] rate [35])
        (* nights rate))

(define transport 130)
(define flight    77)

(+ rooming
   transport
   flight
)