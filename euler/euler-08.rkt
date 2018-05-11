#lang racket

(require (rename-in racket/base [define fn]))
(require (rename-in racket/base [define def]))
(require math/number-theory)
(require (only-in srfi/26 cut))
(require (only-in srfi/1 unfold-right unfold))
(require threading)

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Project Euler
;; Problem 8

(def raw-string (apply string-append (file->lines "data/euler-08.txt")))

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Solve

(fn nth vector-ref)
(fn (N->list num [base 10])
    (unfold-right zero?
                  (cut remainder <> base)
                  (cut quotient <> base)
                  num))

(def data 
     (~> raw-string
         (string-split "0" #:repeat? true)
         (filter (λ (str) (< 13 (string-length str))) _)
         (map string->number _)
         (map N->list _)
))

(fn (tuple-product-max nats)
    (fn (loop #:best [best 1] #:current [current nats])
        ()
)
