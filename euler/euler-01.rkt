#lang racket

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Project Euler
;; Problem 1

;; Give the sum of all integers between 1 to 1000 that's divisible by either 3 
;; or 5.

(define euler-01
   (foldl + 0
      (filter
         (λ (x)
            (or (zero? (modulo x 3))
                (zero? (modulo x 5))))
         (range 1000))))

(time euler-01) ;; → 233168

(define alt
   (stream-fold + 0
      (stream-filter
         (λ (x)
            (or (zero? (modulo x 3)) 
                (zero? (modulo x 5))))
         (in-range 1000))))
