#lang racket

(require (rename-in racket/base [define fn]))
(require (rename-in racket/base [define def]))
(require (only-in srfi/26 cut))

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Project Euler
;; Problem 18

; Given a bifuricating tree of random digits from 00..99, find the maximum sum
; pathway from one end to end.
;
; 3
; 7 4
; 2 4 6
; 8 5 9 3
;
; Example max sum: 23.

(def raw (map (cut string-split <> " ") (file->lines "data/euler-18.txt")))
(def data (reverse (map (curry map string->number) raw)))

;; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; Solve

(fn (next-line now before)
    (for/list ([i before] [j (rest before)] [k now])
              (+ (max i j) k)))

(fn (euler) (foldl next-line (first data) (rest data)))


(time (euler))

;; in progress
#|
(for/fold ([before (first data)])
          ([now (rest data)])
          (next-line now)
)
|#