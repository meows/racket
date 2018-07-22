## Named Parameters

Named parameters are used to make sure you can't even input the value for the
parameter unless you know the name. In this case, we set it to `#:result`. That
way there's no mistake, and it's also visually clearer.

``` racket
(define (factorial n #:result [p 1])
    (if (zero? n)
        p
        (factorial (sub1 n) #:result (* n p))))

;; if the steps of (factorial 4) were written out
(factorial 4 #:result 1)
(factorial 3 #:result (* 3 4))
(factorial 2 #:result (* 2 12))
(factorial 1 #:result (* 1 24))
(factorial 0 #:result 24)
24
```

## Rest Parameters

``` racket
(define (gcd n1 n2 . rest)
    (define (gcd/2 n1 n2)
        (if (zero? n2)
            n1
            (gcd/2 n2 (modulo n1 n2))))

    (for/fold ([divisor 0])
              ([n (list* n1 n2 rest)])
              (gcd/2 n divisor))
)

(define (lcm n1 n2 . rest)
    (define (lcm/2 n1 n2)
        (/ (abs (* n1 n2)) (gcd n1 n2)))

    (for/fold ([multiple 1])
              ([n (list* n1 n2 rest)])
              (lcm/2 multiple n))
)
```
