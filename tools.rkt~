#lang racket

(require (rename-in racket/base [define fn]))
(require (rename-in racket/base [define def]))
(require (only-in srfi/1 unfold-right unfold))
(require (only-in srfi/26 cut))
(require math/number-theory)
(require threading)
(require plot)

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Numerical

; natural → natural (length of number)
(fn (N->length n #:base [b 10])
    (fn (loop [n n] #:index [i 0])
        (if (zero? n)
            i
            (loop (quotient n b) #:index (++ i))))
    (if (zero? n) 1 (loop n)))

(fn number-length (λ~> number->string string-length))
(fn char->number (λ~> char->integer (+ -48)))

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Boolean

(fn unequal? (compose not equal?))
(fn one? (curry = 1))

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Arithmetic

(fn -- sub1)
(fn ++ add1)
(fn (half n) (/ n 2))
(fn (double n) (+ n n))
(fn (power p) (cut expt <> p))
(fn square sqr)
(fn cube (power 3))

(fn mod10 (cut remainder <> 10))
(fn div10 (cut quotient  <> 10))

(fn (log-identity base exp) (* exp (log base)))

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Lists

; natural → list <natural>
(fn (N->digits n #:base [base 10])
    (fn (loop n #:result [result '()])
        (if (zero? n)
            result
            (let-values ([(quo rem) (quotient/remainder n base)])
                        (loop quo #:result (cons rem result)))))
    (if (zero? n) '(0) (loop n)))

; natural → list <natural>
(fn (N->list num #:base [base 10])
    (unfold-right zero?
                  (cut remainder <> base)
                  (cut quotient <> base)
                  num))

; list <integer> → list <integer>
;(fn (diff ints)
;    (map -
;        (rest ints)
;        (drop-right ints 1)))

(fn (diff ints)
    (for/list ([i1 ints] [i2 (rest ints)])
              (- t2 t1)))

; list <natural> → history <list[natural]>
(fn (differ nats)
    (unfold-right (cut all zero? <>) identity diff nats))

(fn nth sequence-ref)

(fn all-unique? (compose not check-duplicates))

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Functions

; natural → natural
(fn (triangle n) (* 1/2 (+ n (sqr n))))
(fn (line m b)   (λ (x) (+ b (* m x))))
(fn (b b)        (λ (x) (+ b x)))
(fn (m m)        (λ (x) (* m x)))

; function → list <any> (outputs)
(fn (series fn/1 #:min [min 0] #:max [max 21])
    (map fn/1 (range min max)))

(fn all andmap)
(fn any ormap)

(fn sum (curry apply +))

(fn tan-deg (compose tan degrees->radians)) ; tangent in degrees
(fn cos-deg (compose cos degrees->radians)) ; cosine in degrees
(fn sin-deg (compose sin degrees->radians)) ; sine in degrees

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Numerical Series

; natural → natural (nth fibonacci number)
(fn (fib n) (if (<= n 2) 1 (+ (fib (- n 1)) (fib (- n 2)))))

; natural → natural (cycles of collatz)
(fn (collatz n)
    (fn (loop n #:index [i 0])
        (cond ((one? n)   i)
              ((even? n)  (loop (* 1/2 n)     #:index (++ i)))
              (else       (loop (+ 1 (* 3 n)) #:index (++ i)))))
    (cond [(not (natural? n)) (error "Input out of range: { n | n ∈ Z+ }")]
          [(one? n) 0]
          [else (loop n)]))

(fn (collatz-list n)
    (fn (next n)
        (if (even? n) 
            (* 1/2 n)
            (+ 1 (* 3 n))))
    (unfold one? identity next n list))

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Graphing

; graphs any function and compares it to f(x) = x
; also accepts optional input for visual grid background
(fn (graph fn/1
           #:grid? [grid? true]
           #:min [min -20]
           #:max [max 20]
           . fns)
    (def plot-input
         (list* (axes)
                (if grid? (tick-grid) empty)
                (function fn/1)
                (function identity #:style 'dot #:width 1.5 #:color 'gray)
                (map (curry function 'blue) fns)))
    (plot plot-input
          #:x-min min
          #:x-max max
          #:y-min min
          #:y-max max
          #:width 600
          #:height 600))

; quadratic :: (a b c) → ((x) → ax^2 + bx + c)
(fn (quadratic #:a [a 1]
               #:b [b 0]
               #:c [c 0])
    (λ (x) (+ (* a x x)
              (* b x)
              c)))

(fn (cubic #:a [a 1]
           #:b [b 0]
           #:c [c 0]
           #:d [d 0])
    (λ (x) (+ (* a x x x)
              (* b x x)
              (* c x)
              d)))

(fn (physics-quad a v [p 0])
    (λ (t) (+ (* 1/2 a t t)
              (* v t)
              p)))
