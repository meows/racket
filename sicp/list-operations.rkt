#lang racket

; if item is in list x:
; then return sublist with item at head
(define (memq item x)
   (cond ((null? x) false)
         ((eq? item (car x)) x)
         (else (memq item (cdr x)))))
