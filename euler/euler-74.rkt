#lang racket

(require math/number-theory)
(require threading)
(require (only-in srfi/1 unfold-right unfold))
(require (only-in srfi/26 cut))
(require (rename-in racket/base [define fn]))
(require (rename-in racket/base [define def]))

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Project Euler
;; Problem 74

(define max 1000001)

; unfortunately Racket considers a number to be sequential
(fn (not-serial? x) 
    (not (or (list? x) (vector? x))))

; natural → list <natural>
(fn (natural->digits nat #:base [base 10])
    (unfold-right zero?
                  (cut remainder <> base)
                  (cut quotient  <> base)
                  nat))

; list <natural> → natural
(fn (digits->natural nats #:base [base 10])
    (cond [(not-serial? nats) (error "not sequential type.")])
    (for/fold ([place 1] [sum 0] #:result sum)
              ([n (reverse nats)])
              (values (* place base) (+ sum (* n place)))))

; list <natural> → natural
(fn (next-chain digits)
    (cond [(not-serial? digits) (error "not sequential type.")])
    (natural->digits (for/sum ([d digits]) (factorial d))))

; counts the number of steps before a loop in a digit-factorial-sum chain
(fn (chain-count n)
    (define start n)
    (fn (loop now #:seen [seen (set)] #:steps [steps 0])
        (if (set-member? seen now)
            steps
            (loop (next-chain now) 
                  #:seen (set-add seen now) 
                  #:steps (++ steps))))
    (loop start)
)

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Solve

; Increment sum whenever we encounter (= 60 (chain-count n)).
(for/fold ([sum 0])
          ([n (in-range 1000 max)])
          (if (= 60 (chain-count (natural->digits n))) 
              (++ sum)
              sum))
