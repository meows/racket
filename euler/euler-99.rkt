#lang racket

(require (rename-in racket/base [define fn]))
(require (rename-in racket/base [define def]))
(require math/number-theory)
(require (only-in srfi/26 cut))
(require (only-in srfi/1 unfold-right unfold))
(require threading)

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Project Euler
;; Problem 99

(fn ++ add1)

(def raw-strings (file->lines "data/euler-99.txt"))

(def tuples 
     (~> raw-strings 
         (map (λ (string) (string-split string  ",")) _)
         (map (λ (strings) (map string->number strings)) _)))

(fn (log-identity base exponent) (* exponent (log base)))

(for/fold ([best 0] [seen-at 0] [index 0] #:result (list best seen-at))
          ([t tuples])
          (let ([log-id (log-identity (first t) (second t))])
               (if (< best log-id)
                   (values log-id (++ index) (++ index))
                   (values best seen-at (++ index)))))
