#lang racket

(require (rename-in racket/base [define fn]))
(require (rename-in racket/base [define def]))
(require math/number-theory)
(require threading)
(require srfi/26)
(require plot)

;; -----------------------------------------------------------------------------
;; Numerical

; natural → natural (length of number)
(fn (N->length n #:base [b 10])
    (fn (loop [n n] #:index [i 0])
        (if (zero? n)
            i
            (loop (quotient n b) #:index (++ i))))
    (if (zero? n) 1 (loop n)))

;; ------------------------------------
;; Boolean

(fn unequal? (compose not equal?))
(fn (natural? n) (positive-integer? n))
(fn (one? n)     (= n 1))

;; ------------------------------------
;; Arithmetic

(fn -- sub1)
(fn ++ add1)
(fn square sqr)
(fn (double n) (+ n n))
(fn (half n)   (/ n 2))
(fn (power p)  (cut expt <> p))
(fn cube       (power 3))

(fn mod10 (cut remainder <> 10))
(fn div10 (cut quotient <> 10))

;; ------------------------------------
;; Lists

; natural → list <natural>
(fn (N->list n #:base [base 10])
    (fn (loop n #:result [result '()])
        (if (zero? n)
            result
            (let-values ([(quo rem) (quotient/remainder n base)])
                        (loop quo #:result (cons rem result)))))
    (if (zero? n) '(0) (loop n)))

; list <integer> → list <integer>
(fn (diff ints)
    (map -
         (rest ints)
         (drop-right ints 1)))

; list <natural> → history <list[natural]>
(fn (diff-loop nats)
    (fn (loop lst #:count [c 0] #:history [h (list)])
        (if (all zero? (diff lst))
            (append h (list lst))
            (loop (diff lst) #:count (++ c) #:history (append h (list lst)))))
    (loop nats))

;; -----------------------------------------------------------------------------
;; Functions

; natural → natural
(fn (triangle n) (* 1/2 (+ n (sqr n))))
(fn (line m b)   (λ (x) (+ b (* m x))))
(fn (b b)        (λ (x) (+ b x)))
(fn (m m)        (λ (x) (* m x)))

; function → list <any> (outputs)
(fn (table fn/1 #:min [min 0] #:max [max 21]) 
    (map fn/1 (range min max)))

(fn all andmap)
(fn any ormap)

(fn sum (curry apply +))

;; -----------------------------------------------
;; Numerical Series

; natural → natural (nth fibonacci number)
(fn (fib n) (if (<= n 2) 1 (+ (fib (- n 1)) (fib (- n 2)))))

; natural → natural (cycles of collatz)
(fn (collatz n)
    (fn (loop n #:index [i 0])
        (cond ((one? n)   i)
              ((even? n)  (loop (* 1/2 n)      #:index (++ i)))
              (else       (loop (+ 1 (* 3 n))  #:index (++ i)))))
    (cond ((not (natural? n)) (error "Input out of range: { n | n ∈ Z+ }"))
          ((one? n) 0)
          (else (loop n))))

;; -----------------------------------------------------------------------------
;; Graphing

; graphs any function and compares it to f(x) = x
; also accepts optional input for visual grid background
(fn (graph fn/1 #:grid? [grid? false] #:min [min 0] #:max [max 20])
    (plot (list (axes)
                (if grid? (tick-grid) null)
                (function fn/1)
                (function identity #:style 'dot #:width 1.5 #:color 'gray))
          #:x-min min
          #:x-max max
          #:y-min min
          #:y-max max
))

; (a:real, b:real, c:real) -> f(x) -> ax^2 + bx + c
(fn (quadratic #:a [a 1] #:b [b 1] #:c [c 0])
    (λ (x) (+ (* a x x)
              (* b x)
              c
)))