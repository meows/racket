# `for/fold`

`for/fold` is one of the hardest but most powerful functions there are over
sequences, so I'm going to show you examples first:

``` clojure
;; adds all the numbers from 0 to 10
(for/fold ([sum 0]) ;; the current sum
   ([n (range 11)]) ;; the sequence you are running over
   (+ sum n)        ;; the next sum
)
```

``` clojure
(define (factorial n)
        (for/fold ([product 1]) 
                  ([i (range 1 (add1 n))]) 
                  (* product i)
))
```
