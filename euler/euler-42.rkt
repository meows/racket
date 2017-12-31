#lang racket

(require math/number-theory)
(require threading)
(require (rename-in racket/base [define fn]))
(require (rename-in racket/base [define def]))

;; -----------------------------------------------------------------------------
;; Project Euler
;; Problem 42

(def source "data/euler-42.txt")
(def input  (file->list source))

(def uid (for/hash ([letter '(a b c d e f g h i j k l m n o p q r s t u v w x y z)]
                    [natural (range 1 27)]) 
                   (values letter natural)))


(fn (letter->natural letter) (hash-ref uid (string->symbol letter)))
(fn (letters->naturals letters) (map letter->natural letters))
(fn (word->letters word) (map string (string->list word)))

(fn (euler-42 words)
    (~> words
        (map string-downcase _)
        (map word->letters _)
        (map letters->naturals _)
        (map (curry apply +) _)
        (count triangle-number? _)))

(euler-42 input)
