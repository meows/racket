#lang racket

(require (rename-in racket/base [define fn]))
(require (rename-in racket/base [define def]))
(require (only-in srfi/1 unfold-right unfold))
(require math/number-theory)
(require threading)

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Project Euler
;; Problem 99

(fn ++ add1)

;; Raw data from file split as lines.
(define raw-strings (file->lines "data/euler-99.txt"))

;; A list of 2-list of '(base exponent).
(define tuples
    (~> raw-strings
        (map (λ (string)  (string-split string  ","))   _ )
        (map (λ (strings) (map string->number strings)) _ )))

;; Translates every (base, exponent) pair into a unique number that preserves
;; the orderings of power: log(b^e) = e * log(base).
(fn (log-identity base exponent)
    (* exponent (log base)))

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Solve

;; Finds the greatest value for (log-identity base exponent) from the sequence
;; of <tuples> defined above.
(for/fold ([best 0] [seen-at 0] [index 0] #:result (list best seen-at))
          ([t tuples] [i (in-naturals)])
          (let ([log-id (log-identity (first t) (second t))])
               (if (< best log-id)
                   (values log-id (++ index) (++ index))
                   (values best   seen-at    (++ index)))))
