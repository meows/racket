#lang racket

(require threading)

(define path "data/advent-01.txt")
(define file (file->lines path))
(define vecs (map string->number file))

(define advent-1 (for/sum ([v vecs]) v))
(define advent-2 
   (for*/fold 
      ([now 0] [seen (set 0)] #:result next)
      ([v (in-cycle vecs)] [next (in-value (+ now v))] 
       #:break (set-member? seen next))
      (values next (set-add seen now))
   )
)

advent-2