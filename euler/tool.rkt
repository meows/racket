#lang racket

(require (rename-in racket/base [define fn]))
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

; natural → list <naturals>
(fn (N->list n #:base [b 10])
    (fn (loop n #:result [result '()])
        (if (zero? n)
            result
            (loop (quotient n b) #:result (cons (remainder n b) result))))
    (if (zero? n) '(0) (loop n)))

; list <number> → list <numbers>
(fn (diff l)
    (map -
         (cdr l)
         (drop-right l 1)))

; list <number> → count <natural>, history <list[numbers]>
(fn (diff-loop lst)
    (fn (loop l #:count [c 0] #:history [h '()])
        (if (andmap zero? (diff l))
            (append h (list l))
            (loop (diff l) #:count (++ c) #:history (append h (list l)))))
    (loop lst))

;; -----------------------------------------------------------------------------
;; Functions

; natural → natural
(fn (triangle n) (* 1/2 (+ n (sqr n))))
(fn (line m b)   (λ (x) (+ b (* m x))))
(fn (b b)        (λ (x) (+ b x)))
(fn (m m)        (λ (x) (* m x)))

; function → list <any> (outputs)
(fn (table fn/1 #:min [min 0] #:max [max 15]) 
    (map fn/1 (range min max)))

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
(fn (graph fn/1 #:grid? [grid? false] #:min [min -10] #:max [max 10])
    (plot (list (axes)
                (if grid? (tick-grid) null)
                (function fn/1)
                (function (λ (x) x) #:style 'dot #:width 1.5 #:color 'gray))
          #:x-min min
          #:x-max max
          #:y-min min
          #:y-max max
))
