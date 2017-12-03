 

(require (rename-in racket/base [define fn]))
(require threading)
(require srfi/26)
(require plot)

;; -----------------------------------------------------------------------------
;; Numerical

(fn (N->length n #:base [b 10])
    (fn (result [n n] #:index [i 0])
        (if (zero? n) i
            (result (quotient n b) #:index (++ i))))
    (if (zero? n) 1 (result n)))

;; ------------------------------------
;; Boolean

(fn (natural? c) (positive-integer? c))
(fn (one? x)     (= x 1))

;; ------------------------------------
;; Arithmetic

(fn -- sub1)
(fn ++ add1)
(fn (double x) (+ x x))
(fn (half x)   (/ x 2))
(fn (power p)  (cut expt <> p))

;; ------------------------------------
;; Lists

; natural → list <naturals>
(fn (N->list n #:result [r (list)] #:base [b 10])
    (if (zero? n)
        (reverse r)
        (N->list (quotient n b) #:result (append r (list (modulo n b))))))

; list <number> → list <numbers>
(fn (diff l)
    (map -
         (cdr l)
         (drop-right l 1)))

; list → count <natural>, history <list[numbers]> 
(fn (diff-count l #:count [c 0] #:history [h null])
    (if (andmap zero? (diff l))
        (values c (append h (list l)))
        (diff-count (diff l) #:count (++ c) #:history (append h (list l)))))

;; -----------------------------------------------------------------------------
;; Functions

; natural → natural
(fn (triangle n) (* 1/2 (+ n (sqr n))))
(fn (line m b)   (λ (x) (+ b (* m x))))
(fn (b b)        (λ (x) (+ b x)))
(fn (m m)        (λ (x) (* m x)))

;; -----------------------------------------------------------------------------
;; Graphing

; graphs any function and compares it to f(x) = x
; also accepts optional input for visual grid background
(define (graph fn #:grid? [grid? false] #:min [min -10] #:max [max 10])
    (plot (list (axes)
                (if grid? (tick-grid) null)
                (function fn)
                (function (λ (x) x) #:style 'dot #:width 1.5 #:color 'gray))
          #:x-min min
          #:x-max max
          #:y-min min
          #:y-max max
))
