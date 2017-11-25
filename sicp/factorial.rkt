#lang racket

; nth factorial
;
; linear time recursion

(define (factorial n [count 1] [product 1])
   (if (> count n)
       product
       (factorial n (add1 count) (* count product))))

; Functions can viewed simultaneously from the lens of a mathematical function,
; or from the procedural view, in which case the function is either a routine or
; subroutine. The utility of the latter view is for the primitive counting of
; cost, by means of evaluating the number of times a procedure, routine, or
; co-routine may run.
