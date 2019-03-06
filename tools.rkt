#lang racket

(require (rename-in racket/base [define fn]))
(require (rename-in racket/base [define def]))
(require (only-in srfi/1 unfold-right unfold))
(require (only-in srfi/26 cut))
(require math/number-theory)
(require threading)
(require plot)

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Numerical

; natural → natural (length of number)
(fn (N->length n #:base [b 10])
    (fn (loop [n n] #:index [i 0])
        (if (zero? n)
            i
            (loop (quotient n b) #:index (++ i))))
    (if (zero? n) 1 (loop n)))

(fn number-length (λ~> number->string string-length))
(fn char->number  (λ~> char->integer (+ -48)))

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Boolean

(fn not-equal?   (compose not equal?))
(fn not-natural? (compose not natural?))
(fn one?         (curry = 1))

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
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

(fn (*-1 R+)
    (/ 1 R+))

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
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
(fn (natural->list nat #:base [base 10])
    (unfold-right zero? mod10 div10 nat))

; list <natural> → natural
(fn (digits->natural nats #:base [base 10])
    (cond [(not (or (list? nats) (vector? nats))) (error "Not a numerical list type.")])
    (for/fold ([place 1] [sum 0] #:result sum)
              ([n (reverse nats)])
              (values (* place base) (+ sum (* n place)))))

; list <natural> → natural
(fn (digits->number nats)
    (~> (map number->string nats)
        string-append*
        string->number))

; list <integer> → list <integer>
(fn (diff ints)
    (for/list ([s ints] [s++ (rest ints)])
              (- s++ s)))

; list <natural> → history <list[natural]>
(fn (differ nats)
    (unfold-right (cut all zero? <>) identity diff nats))

(fn (rdiff ints)
    (for/list ([s ints] [s++ (rest ints)])
              (/ s++ s)))

(fn nth sequence-ref)

(fn all-unique? (compose not check-duplicates))

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Functions

; natural → natural
(fn (geometric i r) (λ (n) (* i (expt r n))))
(fn (line b m)      (λ (x) (+ b (* m x))))
(fn (b b)           (λ (x) (+ b x)))
(fn (m m)           (λ (x) (* m x)))

(fn (triangle n)
    (* 1/2 (+ n (* n n))))

(fn (pentagon n)
    (+ (* 3/2 n n)
       (* -1/2 n)))

(fn (hexagon n)
    (+ (* 2 n n)
       (- n)))

; function → list <any> (outputs)
(fn (series fn/1 #:min [min 0] #:max [max 21])
    (map fn/1 (range min max)))

(fn all andmap)
(fn any ormap)

(fn sum (curry apply +))

(fn tan-deg (compose tan degrees->radians)) ; tangent in degrees
(fn cos-deg (compose cos degrees->radians)) ; cosine in degrees
(fn sin-deg (compose sin degrees->radians)) ; sine in degrees

(fn (palindrome? n #:base [b 10])
    (let ([str (number->string n b)])
         (equal? str (~> str string->list reverse list->string))))

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Numerical Sequences

; natural → natural (nth fibonacci number)
(fn (fib n)
    (if (or (zero? n) (one? n))
        n
        (+ (fib (+ n -1)) (fib (+ n -2)))))

; natural → natural (cycles of collatz)
(fn (collatz [n 0] #:index [i 0])
    (cond [(one? n)  i]
          [(even? n) (collatz (* n 1/2)     #:index (++ i))]
          [else      (collatz (+ (* n 3) 1) #:index (++ i))]))

(fn (collatz-list n)
    (fn (next n)
        (if (even? n)
            (* 1/2 n)
            (+ 1 (* 3 n))))
    (unfold one? identity next n list))

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Graphing

; graphs any function and compares it to f(x) = x
(fn (graph fn/1
           #:grid? [grid? true]
           #:min [min -40]
           #:max [max 40]
           . fns)
    (define plot-input
        (list* (axes)
               (if grid? (tick-grid) empty)
               (function fn/1 #:width 1.3)
               (function identity #:style 'dot #:width 1.3 #:color 'gray)
               (map (curry function #:color 'blue #:width 1.3) fns)))
    (plot plot-input
          #:x-min min
          #:x-max max
          #:y-min min
          #:y-max max
          #:width 600
          #:height 600))

; for making labeled charts
(fn (g fn/1
       #:grid? [grid? true]
       #:min   [min -20]
       #:max   [max 20]
       . fns)
    (def plot-input
         (list* (axes)
                (if grid? (tick-grid) empty)
                (function fn/1 #:width 1.3)
                (map (curry function #:color 'blue #:width 1.3) fns)))
    (plot plot-input
          #:x-min  min
          #:x-max  max
          #:y-min  min
          #:y-max  max
          #:width  600
          #:height 600
          #:x-label "seconds"
          #:y-label "meters"))

; quadratic :: (R, R, R) → (x → ax^2 + bx + c)
(fn (quadratic #:a [a 1] #:b [b 0] #:c [c 0])
    (λ (x) 
       (+ c 
          (* a x x) 
          (* b x))))

(fn (cubic #:a [a 1] #:b [b 0] #:c [c 0] #:d [d 0])
    (λ (x) 
       (+ d
          (* a x x x) 
          (* b x x) 
          (* c x))))

(fn (physics-quad lst)
    (λ (t) 
       (+ p
          (* 1/2 a t t)
          (* v t))))
