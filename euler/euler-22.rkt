#lang racket

(require math/number-theory)
(require threading)
(require (rename-in racket/base [define fn]))
(require (rename-in racket/base [define def]))

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Project Euler
;; Problem 22

(def source "data/euler-22.txt")
(def data (file->string source))

(def uid (for/hash ([letter '(a b c d e f g h i j k l m n o p q r s t u v w x y z)]
                    [natural (range 1 27)])
                   (values (symbol->string letter) natural)))

(fn letters->naturals (curry map (curry hash-ref uid)))

(fn (word->letters word) (map string (string->list word)))
(fn sum (curry apply +))
(fn transform 
    (λ~> string-downcase 
         word->letters 
         letters->naturals 
         sum))

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Solve

(map string-replace (string-split data ",") '(" ") '(""))