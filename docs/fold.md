# `for/fold`

`for/fold` is one of the hardest but most powerful functions there are over
sequences, so I'm going to show you examples first:

``` clojure
;; adds all the numbers from 0 to 10
(for/fold ([sum 0])        ;; the current sum
          ([n (range 11)]) ;; the sequence you are running over
          (+ sum n)        ;; the next sum
)
```

``` clojure
(fn (factorial n)
    (for/fold ([product 1])             ;; current product
              ([i (range 1 (add1 n))])  ;; the sequence you are running over
              (* product i)             ;; the next product
    )
)
```

``` clojure
(fn (triangle n)
    (for/fold ([sum 0])              ;; current sum
              ([i (range (add1 n))]) ;; the sequence you are running over
              (+ sum i)              ;; the next sum
    )
)
```
