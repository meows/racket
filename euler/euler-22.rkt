#lang racket

(require math/number-theory)
(require threading)
(require (rename-in racket/base [define fn]))
(require (rename-in racket/base [define def]))

(fn sum (curry apply +))
(fn ++ add1)
(fn unequal? (compose not equal?))

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Project Euler
;; Problem 22

(define source "data/euler-22.txt")
(define data (file->string source))

(define uid
    (for/hash ([l '(a b c d e f g h i j k l m n o p q r s t u v w x y z)]
               [n (in-range 1 27)])
              (values (symbol->string l) n)))

(fn letters->naturals
    (curry map (curry hash-ref uid)))

(fn (word->letters word)
    (map string (string->list word)))

(fn name->value
    (λ~> string-downcase
         word->letters
         letters->naturals
         sum))

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Solve

(define names
    (sort (filter (cut unequal? <> ",")
                  (string-split data "\""))
          string<?))

(define euler
    (for/fold ([i 1] [sum 0] #:result sum)
              ([n names])
              (values (++ i)
                      (+ sum (* i (name->value n))))))
