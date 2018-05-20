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

## Examples

Here's an example of `lambda` in action:

``` clojure
;; Example 1
(define div10 (lambda (x) (/ x 10)))
(div10 100)  ;; → 10
(div10 20)   ;; → 2
```

You've probably noticed that you could do the exact same thing with the way you
learned before:

``` clojure
;; Example 2
(define (div10 x) (/ x 10))
(div10 100)  ;; → 10
(div10 20)   ;; → 2
```

In fact, this is just a convenient shortcut for writing the top `lambda`
example, and to Racket the two examples do exactly the same thing.

Just to get used to how `lambda` works, here's a familiar example with multiple
parameters, length `l`, width `w`, and height `h`:

``` clojure
;; Example A
(define prism-volume
        (lambda (l w h) (* l w h))

(prism-volume 3 5 8)  ;; → 120
```

Which would be complete identical to the familiar way of doing it:

``` clojure
;; Example B
(define (prism-volume l w h)
        (* l w h))

(prism-volume 3 5 8)  ;; → 120
```

## Why do people use Lambda?

When we show examples of functions like `filter` that consume other functions as
inputs, for example,

``` clojure
;; Example 1
(define (big? n) (< 3 n))

(filter big?  (range 6)) ;; → '(4 5)
(filter even? (range 6)) ;; → '(0 2 4)
```

You might've noticed that `big?` is a function we had to write out ahead of
time, or that you've had to rely on functions that Racket already gave you, such
as `even?`. But what if you felt like you didn't want to define a new function 
before using it? That's what `lambda` allows you to do:

``` clojure
;; Example 2
(filter (lambda (x) (< 3 x)) (range 6))
(filter (lambda (x) (zero? (modulo x 2))) (range 6))
```

I don't blame you if you think the above examples look harder to read; a lot of
people would agree. On the other hand, you saved the one extra step of defining 
your own function before using it. It's up to your taste if you want to use it.

## Side Note

Because there's a historical tradition around the lambda symbol, and because the
creators of your language also have a special love for it, I will note that
`lambda` and `λ` mean the same thing in Racket and so you're allowed to use
either one.

``` clojure
(define prism-volume
        (λ (l w h)
           (* l w h)))

(filter (λ (x) (< 3 x)) (range 6))
(filter (λ (x) (zero? (modulo x 2))) (range 6))
```

In DrRacket, you can type the `λ` symbol with `ctrl` + `\`.
