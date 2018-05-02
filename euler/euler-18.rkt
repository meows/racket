#lang racket

(require (rename-in racket/base [define fn]))
(require (rename-in racket/base [define def]))
(require math/number-theory)
(require threading)
(require (only-in srfi/26 cut))
(require (only-in srfi/1 unfold-right))

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Project Euler
;; Problem 18

; Given a bifuricating tree of random digits from 00..99, find the maximum sum
; pathway from one end to end.
;
; 3
; 7 4
; 2 4 6  
; 8 5 9 3
;
; Example max sum: 23.

(fn split-by-space (cut string-split <> " "))

(def file "data/euler-18.txt")
(def input (map split-by-space (file->lines file)))

(fn strings->numbers (curry map string->number))

(def euler-18 (map strings->numbers input))

euler-18
