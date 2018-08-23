#lang racket

(require math/number-theory)
(require threading)
(require (only-in srfi/26 cut))
(require (rename-in racket/base [define fn]))
(require (rename-in racket/base [define def]))

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Project Euler
;; Problem 42

(define source "data/euler-42.txt")
(define input  (file->list source))

(fn sum (curry apply +))
(fn ++ add1)

(define uid
    (for/hash ([letter '(a b c d e f g h i j k l m n o p q r s t u v w x y z)]
               [natural (in-range 1 27)])
              (values (symbol->string letter) natural)))

(fn (letters->naturals letters) (map (cut hash-ref uid <>) letters))
(fn (word->letters word) (map string (string->list word)))

(fn word->natural
    (λ~> string-downcase 
         word->letters 
         letters->naturals 
         sum))

(fn triangle-word? (λ~> word->natural triangle-number?))

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Solve

(fn (euler-42 words)
    (count triangle-number? 
           (map word->natural words)))

(fn (alt words) 
    (for/sum ([w words] 
              #:when (triangle-word? w)) 1))

(time (alt input))  ;; → 162
