#lang racket

(require math/number-theory)
(require threading)
(require (rename-in racket/base [define fn]))
(require (rename-in racket/base [define def]))

;; -----------------------------------------------------------------------------
;; Project Euler
;; Problem 42

(fn ++ add1)

(fn (four-distinct-factors? n) 
    (~> n factorize length (equal? 4)))

(fn (list-full? lst) (equal? (length lst) 4))

(fn (euler)
    (fn (loop #:index [i 100] #:state [state null])
        (cond [(list-full? state) state]
              [(four-distinct-factors? i) (loop #:index (++ i) #:state (cons i state))]
              [else (loop #:index (++ i) #:state null)]))
    (loop #:index 100))

(time (euler))  ;; → '(134046 134045 134044 134043)
