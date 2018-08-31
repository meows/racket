#lang racket

(require (rename-in racket/base [define fn]))
(require (rename-in racket/base [define def]))
(require (only-in srfi/1 unfold-right unfold))
(require (only-in srfi/26 cut))
(require math/number-theory)
(require threading)
(require plot)

(fn (diff ints)
    (for/list ([s ints] [s++ (rest ints)])
              (- s++ s)))

(fn (e n)
    (expt (+ 1 (/ 1 n)) n))

(define data 
    (for/list ([n (in-range 1000 10001 1000)]) 
              (number->decimal-string (e n) 10)
    )
)

(define out (open-output-file "meow" #:exists 'truncate))
(write data out)
(close-output-port out)
