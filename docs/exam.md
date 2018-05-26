---
id: exam
sidebar_label: exam
hide_title: true
---

## Terms

1. What is a variable?
2. What is variable assignment?
3. What is a function?

## Function

Define a function in terms of input and output.

## Line

Define a function for each of these sequences, but before you do, identify
(1) the initial starting point and (2) the velocity.

* `0, 1, 2, 3, 4, 5...`
* `0, 2, 4, 6, 8...`
* `0, 3, 6, 9, 12...`
* `3, 6, 9, 12, 15...`
* `-6, -1, 4, 9, 14...`
* `14, 9, 4, -1, -6...`

Define a function in Racket called `line` which can take two parameters, a 
starting position `p0` and a velocity `v`, and return a function or lambda which 
would give that sequence.

``` clojure
(define (line p0 v)
        (lambda (x) (+ p0 (* x v))))

(map (line 0 3) (range 10))
```

## Circle

* Define a circle using terms such as _center point_ and _radius_.
* Define pi or `π` using the term _ratio_.
* If the radius of a circle is `1`, then what's the circumference?
* What's an angle?
* If I want to walk backward `1/3` of the way around a circle, what is that in
  both degrees and radians?
* If I want to walk forward `5/4` of the way around a circle, what is that in
  both degrees and radians?
