#  A Segue into Programming

Programming is a combined art, between the ability to control a computer to do
what you want, and the ability to take information and do whatever you
want to it. The former art is a little pragmatically focused, and the latter art
is a little abstractly focused.

The two arts combined erects such experiences ranging from something world-class
like the Google maps app, to something as small as a home automation program
that turns off your lights under certain conditions.

Programming languages often give you two vital abilities, as discussed above:
(1) the ability to control a computer, and (2) the ability to do anything with
information.

One of the favorite tools programmers use to transform information is called a
function. Functions might be crudely divided into two categories *pure* and
*impure*, based on whether they behave similarly to math functions.

Let's look at a function `p` which can tell you the volume of a rectangular
prism if you have its length `l`, width `w`, and height `h`:

p(l, w, h) -> l * w * h

Given:
   l = 2 cm
   w = 3 cm
   h = 4 cm

p(l, w, h) -> 2 * 3 * 4
p(2, 3, 4) -> 12

#  A look at Lisp

Lisp is a computer programming language that is quite concerned with information
and transformation. It's considered a little odd by many because of an
overabundance of parentheses. Here's a little Lisp expression which calculates
the sum of a list of numbers:

``` Clojure
(+ 1 2 3 4 5)
```

The first item in the parenthesis is special.
