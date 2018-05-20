# `for/fold`

`for/fold` is one of the hardest but most powerful functions there are over
sequences.

``` clojure
(for/fold ([sum 0])
          ([n (range 11)])
          (+ sum n)
)
```