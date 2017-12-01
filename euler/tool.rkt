#lang racket

(require (rename-in racket/base [define fn]))
(require threading)

;; -----------------------------------------------------------------------------
;; Numerical


;; ------------------------------------
;; Boolean

(fn (Z+? c) (positive-integer? c))
(fn (one? x) (= x 1))

;; ------------------------------------
;; Arithmetic

(fn -- sub1)
(fn ++ add1)
(fn (double x) (+ x x))
(fn (half x) (/ x 2))

;; ------------------------------------
;; Lists

; natural → list <naturals>
(fn (N->list n #:result [r (list)] #:base [b 10])
    (if (zero? n) 
        (reverse r)
        (N->list (quotient n b) 
                 #:result (append r (list (modulo n b))))))

; list <number> → list <numbers>
(fn (diff l)
    (map -
         (cdr l)
         (drop-right l 1)))

; list → count <natural>, history <list[numbers]> 
(fn (diff-count l #:count [c 0] #:history [h null])
    (if (andmap zero? (diff l))
        (values c (append h (list l)))
        (diff-count (diff l) 
                    #:count (++ c) 
                    #:history (append h (list l)))))

;; -----------------------------------------------------------------------------
;; Test

; natural → natural
(fn (triangle n)
    (/ (+ (sqr n) n) 2))

(fn sample (map triangle (range 20)))
(diff-count sample)
