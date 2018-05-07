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

(def raw-strings (file->lines "data/euler-99.txt"))
(def tuples (map (λ (strings) (map string->number strings)) 
                 (map (λ (str) (string-split str  ","))
                      raw-strings
)))

(fn (log-identity base exponent) (* exponent (log base)))

(for/fold ([best 0] [seen-at 0] #:result (list best seen-at))
          ([t tuples])
          (let ([log-id (log-identity (first t) (second t))])
               (if (< best log-id)
                   (values log-id (add1 seen-at))
                   (values best (add1 seen-at)))
))
