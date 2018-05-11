---
id: values
title: Values
sidebar_label: Values
hide_title: true
---

# Values and Types

> Reading time: 10 to 15 minutes.

## Grouping values

Just about all programming languages allow you to take information in some way,
save it, find it again, and perhaps later change it in some useful way. A piece
of information that's actually saved on your computer can be called a _value_,
and different kinds of values can be grouped into different _types_.

Let's look at some example values below:

``` clojure
3.14
355/113
128
256
512
"Alex"
"Frank"
"Lucy"
"fish"
"bird"
"dog"
```

Even without knowing exactly what the above values are, we can see that some are
different from the others, and that we can group alike things together if we
wish:

``` clojure
(define numbers (list 3.14 355/113 128 256 512))
(define strings (list "Alex" "Frank" "Lucy" "fish" "bird" "dog"))
```

We can even further divide things up if we wish:

``` clojure
(define rationals (list 3.14 22/7 355/113))
(define base2     (list 128 256 512)
(define names     (list "Alex" "Frank" "Lucy"))
(define animals   (list "fish" "bird" "dog"))

(define numbers (append rationals base2))
(define strings (append names animals))
```

As you can see, a _type_ is just a way of grouping a bunch of values together
because we think they're similar. Some of the types will be part of the language
we use, and some of the types we can create ourselves. After all, nothing can
stop us from saying that we think `(list "Alex" "Frank" "Lucy")` look like 
names, and `(list "fish" "bird" "dog")` look like animals.

Thinking about types becomes more useful later when we want to use the right 
function on the right type, as opposed to trying `(- fish dog)`, because as we 
all know, the dog will get very angry. Now that we know about values and how we
organize or group them into types, let's read about some of the types that 
Racket has provided for us:

## Numbers

All numbers in Racket are _real_ numbers, meaning they can be any kind of
decimal number you want, with the limitation that your computer can run out of
memory. Therefore, you can't really store all the digits of pi on your computer
even though pi is also a real number.

Here are some examples of numbers:

``` clojure
(define a 100)
(define b 0.1)
(define c 1/100)
(define d "hi")
(define e #t)

(number? a) ;; → true
(number? b) ;; → true
(number? c) ;; → true
(number? d) ;; → false -- this is a string.
(number? e) ;; → false -- this is a boolean.
```

> If you're in DrRacket, you might notice that sometimes you get numbers back in
> the form of fractions. If you prefer, you can right-click the number and
> choose a different repesentation, such as reduced fraction, mixed fraction, or
> decimal.

## Strings

A string is a sequence of any valid symbols in your language, but surrounded by
a pair of quotation marks, like `"hello .==.-. there"`. One common use of
strings is to store English-like information, or information written in our
natural language.

Here are examples of strings:

``` clojure
(define a "hi")
(define b " hi ")
(define c " hi   there ")
(define d "皆さんこんにちは")
(define e "Χαίρετε")
(define f 10)
(define g #t)

(string? a) ;; → true
(string? b) ;; → true
(string? c) ;; → true
(string? d) ;; → true
(string? e) ;; → true
(string? f) ;; → false -- this is a number.
(string? g) ;; → false -- this is a boolean.
```

## Booleans

A boolean is value that can only be either `true` or `false`. Racket also allows
you to write it as `#t` or `#f`.

``` clojure
(boolean? true)   ;; → true
(boolean? false)  ;; → true
(boolean? #t)     ;; → true
(boolean? #f)     ;; → true
(boolean? "true") ;; → false -- this is a string.
(boolean? "#t")   ;; → false -- this is a string.

(= #t true)  ;; → true
(= #f false) ;; → true
(= #t false) ;; → false
(= #f true)  ;; → false
(= #t "hi")  ;; → false
(= #f "hi")  ;; → false
```
