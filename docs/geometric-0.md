# Geometric Sequences

Recall that a [sequence](sequence.md) is a list of "things" in order, one after 
another, which can be counted by the natural numbers.

We have seen sequences before like these:

  * 0, 1, 2, 3, 4, 5...
  * 2, 3, 4, 5, 6, 7...
  * 0, 2, 4, 6, 8, 10...
  * 10, 20, 30, 40, 50, 60...
  * 30, 20, 10, 0, -10, -20...

These sequence all have something in common in that their *velocity* never 
changes. We call these *linear* sequences because if we were to graph these
points and connect them, they would look like a straight line.

These sequences can be defined by:

`f(x) = a*x + b`

Where `f` is the function that can give the sequence, `x` is the natural input
that we expect, `a` is the velocity, and `b` is the starting position of the
sequence.

We have also seen sequences like:

  * 0, 1, 3, 6, 10, 15, 21...
  * 0, 1, 4, 9, 16, 25, 36...
  * 0, 1, 8, 27, 64, 125, 216...

What these sequences have in common is that their velocity changes. Fortunately,
their velocity changes in a very stable way, which we discover by finding the
delta of a sequence.

  * 1, 2, 3, 4, 5, 6...
  * 1, 3, 5, 7, 9, 11...
  * 1, 7, 19, 37, 61, 91...
  * 6, 12, 18, 30, 36, 42...

## A difficult sequence to delta

2, 4, 8, 16, 32, 64...

This sequence is curious in that an attempt to delta it would produce another
identical sequence, making the technique useless! If that's true, is there
another easy pattern we might be able to take advantage of?

If we look carefully, we can see that except for the first item, every member in
this sequence is the double of the previous number.

* `f(0) = 3`
* `f(n) = f(n - 1) * 2`
* 3, 6, 12, 24, 48, 96... 

### Observations

1. The first sequence item `f(0)` is `2`.
2. All other sequence items are defined by tripling the previous sequence item.
3. A delta of the sequence reveals an identical sequence.
4. The velocity is changing and it gets faster over time. Therefore it is
   accelerating. The only time velocity doesn't change is when it's at 0.

Therefore, for any function `f` which generates a geometric sequence, we need
only two pieces of information to determine the value at any point of the 
sequence, (1) an initial value `a` and (2) the common ratio `r`:

* `f(n) = a * (r**n)`
