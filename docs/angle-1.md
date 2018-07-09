---
id: velocity
title: Velocity
hide_title: true
sidebar_label: Velocity
---

# Angles and Velocity

We previously learned that an angle is like asking how far you want to walk 
along a circle. You may have also heard before that an angle is what happens 
when two lines intersect.

These two definitions don't exactly sound alike, especially since circles don't 
have the kind of sharp corner you'd expect when two lines intersect each other.
But when you take two intersecting lines, and you draw a circle right at the 
center of that intersection, then the lines will end up slicing up a region of 
that circle's perimeter.

![angle-circle](/img/angle-circle.png)

What percentage of circle is taken up by the intersecting lines will always be 
the same no matter how big or small the circle.

## Why define angle with circles?

The reason why we use the circle definition is because eventually we start 
dealing with larger angles, like `720°` degrees or `4π` radians, in which case
the intersecting lines definition is a little less complete.

## Velocity

Let's say we're looking at a sequence of numbers which I've collected on a 
moving car, using a device that detects how far things are from me. The 
`seconds` column represents the time in seconds according to my stopwatch, with 
`0` meaning the start of my records. The `meters` column represents the readings 
on my distance device, with `0` meaning the car was zero meters away from me.

seconds | meters | ratio
------- | ------ | --------------
0       | 0      | undefined
1       | 3      | 3:1
2       | 6      | 6:2
3       | 9      | 9:3
4       | 12     | 12:4
5       | 15     | 15:5
6       | 18     | 18:6
7       | 21     | 21:7
8       | 24     | 24:8
9       | 27     | 27:9
10      | 30     | 30:10

![(line-0-3)](/img/(line-0-3).png)

As we look from any one second to the next we can see that the distance always 
changes every time by 3 meters. We can also say that the ratio of `meters` to
`seconds` always stays at `3`, and that's why we can summarize the velocity of a
car by saying something like `3 m/s`, or 3 meters per second.

## Lines, Angles, and Velocity

By now we should be comfortable with the idea that:

* the function `f(x) = ax + b` can be used to represent any linear sequence. 
* linear sequences can be defined entirely by two things, a starting position 
  and a velocity. 
* for the function `f`, we should recognize that `a` controls velocity and that 
  `b` controls starting position `f(0)`.
* when you graph `f`, velocity `a` controls the tilt of the line, and starting
  position `b` keeps the graph the same but moves it up or down.

Visually or geometrically speaking, the tilt of a line is another way of saying
how big the angle is between that line and the `x` axis, and therefore we can
represent any velocity as an angle.

For example, the `same` function can be defined as `same(x) = x`, and visually
speaking it cuts a 90°-degree corner of a graph in half, and half of 90° is 45°.
Thus the `same` function has a velocity of 45° degrees, or 1/4 π radians.

What about the `negative` function, which can be defined as `negative(x) = -x`?
Well that's the same as -1/4 π, or -45°.

Normally when we measure angles, we measure counterclockwise. 45° degrees or
1/4 π radians means to rotate a line counterclockwise by that much, which in 
this case is 1/8 of a full circle. A negative sign on an angle would just mean
to rotate by the same amount _but clockwise_.

Note that rotating a line by a half circle forward is the same as rotating it by
a half circle backward.
