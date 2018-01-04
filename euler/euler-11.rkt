#lang racket

(require math/number-theory)
(require (rename-in racket/base [define fn]))
(require (rename-in racket/base [define def]))

;; -----------------------------------------------------------------------------
;; Project Euler
;; Problem 11

(def source "data/euler-11.txt")
(def input (map string->number (map (λ (str) (string-split str " ")) (file->lines source))))
