---
id: lambda
sidebar_label: lambda
hide_title: true
---

# `lambda`

There's actually another way to define a function in Racket, and it's called
`lambda`. Lambda is the 11th letter in the Greek alphabet (mathematicians and 
scientists love Greek and Latin things), and it looks like `λ` when it's
lower-cased, which is how it's often written.

Mathematicians and computer scientists sometimes use it as a name for a 
function, and it's actually the picture logo of the language you're using if you
look really closely.

Here's an example of `lambda` in action:

``` clojure
;; Example #1
(define div10 (lambda (x) (/ x 10)))
(div10 100)  ;; → 10
(div10 20)   ;; → 2
```

You've probably noticed that you could do the exact same thing with the way you
learned before:

``` clojure
;; Example #2
(define (div10 x) (/ x 10))
(div10 100)  ;; → 10
(div10 20)   ;; → 2
```

In fact, this is just a convenient shortcut for writing the top `lambda`
example, and to Racket the two examples do exactly the same thing.

Just to get used to how `lambda` works, here's a familiar example with multiple
parameters, length `l`, width `w`, and height `h`:

``` clojure
(define prism-volume 
        (lambda (l w h) (* l w h))

(prism-volume 3 5 8)  ;; → 120
```

Which would be complete identical to the familiar way of doing it:

``` clojure
(define (prism-volume l w h) (* l w h))
(prism-volume 3 5 8)  ;; → 120
```
