#lang racket

(require (rename-in racket/base [define fn])) ; renames define → fn

; ------------------------------------------------------------------------------
; Arithmetic

(fn ++ add1)
(fn -- sub1)

(fn (one? x)   (= x 1))
(fn (two? x)   (= x 2))
(fn (three? x) (= x 3))

(fn (length-number x base) 

)

(fn (number->list x)

)

(fn (Z+? c) (positive-integer? c))
