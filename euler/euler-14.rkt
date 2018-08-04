#lang racket

(require (rename-in racket/base [define def]))
(require (rename-in racket/base [define fn]))
(require threading)

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Project Euler
;; Problem 14

; Which Collatz number under 1 million leads to the most numbers of recursions?

(fn ++ add1)
(fn (one? x) (= x 1))

(fn (collatz [n 0] #:index [i 0])
    (cond [(one? n) i]
          [(even? n) (collatz (/ n 2) #:index (++ i))]
          [else (collatz (+ 1 (* 3 n)) #:index (++ i))])
)

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Solve

(fn (euler-14 #:max [max 1000000])
    (for/fold ([best 0] [seen-at 0] #:result seen-at)
              ([n (range (++ max))] #:break (< max n))
              (let ([steps (collatz n)])
                   (if (< best steps)
                       (values steps n)
                       (values best seen-at))))
)

(time (euler-14))
