---
id: define
sidebar_label: define
hide_title: true
---

# `define`

## Saving information behind a name

When your computer saves information, whether in RAM or in the hard drive, it
saves it at a location with an address that isn't human-friendly. You might wish
to save a number to remember later, but you wouldn't want to individually look
to memory location `0x9FFF0` (which is a way of saying 633,359, and some people
do use this notation to access memory) just to look at the first item. That's
very exhausting.

Instead we can save the information behind a human-friendly name, known as a
_variable_, and the act of saving information behind a variable is called
_variable assignment_.

It's important to note that a variable doesn't need to refer to any single
number or value. It refers to a *place* where you can put things, such as
values.

Let's look at some examples below:

``` clojure
(define a 5)       ;; → 5
(define b (+ a a)) ;; → 10
(define c (+ a b)) ;; → 15

(+ a b)    ;; →  15
(+ b a)    ;; →  15
(- a b)    ;; →  -5
(- b a)    ;; →   5
(+ a b c)  ;; →  30
(+ c a b)  ;; →  30
(- a b c)  ;; → -20
(- b a c)  ;; → -10
(- c a b)  ;; →   0
```

Of course you can also use longer names too, and sometimes a longer name is
better at communicating what you want to say to another human. It's sometimes
forgotten that computer languages are for people to read too, so you want to
practice writing kindly for others.

### Kind variable names

Below you can see two identical examples of calculating how much you owe due to
taxes. To the computer they are the same, but to a human, the first example
looks like you're multiplying random numbers together. If you didn't have extra
explanation, would you guess why someone is multiplying `a` and `b`?

``` clojure
;; Example #1
(define a 1.0725)
(define b 4.99)
(define total (* a b))

;; Example #2
(define sales-tax 1.0725)
(define price 4.99)
(define total (* sales-tax price))
```

Now that we've learned a little about how to save information, there's actually
another power of `define` that I haven't told you about yet, and that's the
power to define a function, which we'll read about next.

## Functions

In the two examples below I have defined two very similar functions, `before`
and `after`. Let's look at just the first list:

* the first list has three items inside: `define`, `(before n)`, and `(- n 1)`.
* `define` is a keyword that lets you define a function
* `(before n)` is the head of the function; `before` is the name of the
  function, and `n` is the name of the input
* `(- n 1)` is the body of the function; whatever this evaluates to is the
  final value of the function

``` clojure
;; Why might this be named before?
(define (before n) (- n 1))

;; Why might this be named after?
(define (after n) (+ n 1))

(before (before 3)) ;; → 1
(before 3)          ;; → 2
(before (after 3))  ;; → 3
(after 3)           ;; → 4
(after (after 3))   ;; → 5
```

These are examples we've seen before, but they all involve functions that can
only take one input. But you know there are useful functions that take more, for
example, the volume of a rectangular prism can be found with length `l`, width
`w`, and height `h`. One might say that a function that tells you the volume of
a rectangular prism requires exactly three inputs, no more and no less.

I'm going to use the same rules from above for defining a function, but instead
this time I'm going to adapt the rule to work with 3 inputs or _parameters_, and
I'm going to use extra long names for everything just for show.

``` clojure
(define (prism-volume l w h)
        (* l w h)
)
```

Now let's use the function:

``` clojure
(prism-volume 3 4 5)  ;; → 60
(prism-volume 1 2 5)  ;; → 10
(prism-volume 3 3 3)  ;; → 27
(prism-volume 5 (+ 1 4) (+ 3 2))  ;; → 125
```

## Trying out what you know

* Define a function that can generate the sequence: `5, 3, 1, -1, -3, -5...`
* Define a function that can generate the sequence: `0, 1, 8, 27, 64, 128...`
* Define a function called `triangle-area` which tells me the area of a triangle
  if you know `base` and `height`. This function will have two parameters (or
  inputs) that the function can take.
* What is a _variable_, and what is _variable assignment_?
* What is a function _parameter_?
