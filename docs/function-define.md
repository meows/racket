---
id: define
sidebar_label: define
hide_title: true
---

# `define`

## Saving information behind a name

When your computer saves information, whether in RAM or in the hard drive, it
saves it at a location with an address that isn't human-friendly. You might wish
to save an entire list of information, but you wouldn't want to individually
look to memory location `0x9FFF0` (which is a way of saying 633,359) just to
look at the first item. That's very exhausting.

Instead we can save the information behind a human-friendly name, known as a
_variable_. The act of saving information behind a variable is called 
_variable assignment_.

Let's look at some examples below:

### Examples

``` clojure
(define a 5)
(define b 10)
(define c 15)

(+ a b)    ; =>  15
(+ b a)    ; =>  15
(- a b)    ; =>  -5
(- b a)    ; =>   5
(+ a b c)  ; =>  30
(+ c a b)  ; =>  30
(- a b c)  ; => -20
(- b a c)  ; => -10
(- c a b)  ; =>   0
```

Of course you can also use longer names too, and sometimes a longer name is
better at communicating what you want to say to another human. It's sometimes
forgotten that computer languages are for people to read too, so you want to
practice writing kindly for others.

``` clojure
(define (sales-tax price) (* price 1.0725))
(define (f x) (* x 1.0725))
```

In the example above, both of these functions do exactly the same thing, and
your computer doesn't know the difference, but many humans would find the first
one far easier to understand, otherwise one just sees `x` multipled by a random 
decimal number. And what's `x` supposed to be?

Other times it makes sense to be brief because people know what you mean.
Writing kindly takes practice and social judgment.

## Functions

In the two examples below I have defined two very similar functions, `before`
and `after`. Let's look at just the first list:

* the first list has three items inside: `define`, `(before n)`, and `(sub1 n)`.
* `define` is a keyword that lets you define a function
* `(before n)` is the head of the function
* `(sub1 n)` is the body of the function

``` clojure
(define (before n) (sub1 n))
(define (after n) (add1 n))

(after 3)           ; => 4
(after (after 3))   ; => 5
(before (after 3))  ; => 3
```

These are examples we've seen before, but they all involve functions that can
only take on input. But you know there are useful functions that take more, for
example, the volume of a 3D rectangle can be found with `length`, `width`, and
`height`.

I'm going to use the same rules from above for defining a function, but instead
this time I'm going to adapt the rule to work with 3 inputs or *parameters*.

``` clojure
(define (prism-volume length width height) (* length width height))
```

Now let's use the function:

``` clojure
(prism-volume 3 4 5)  ;; => 60
(prism-volume 1 2 5)  ;; => 10
(prism-volume 3 3 3)  ;; => 27
```

