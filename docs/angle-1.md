---
id: velocity
title: Velocity
hide_title: true
sidebar_label: Velocity
---

# Angles and Velocity

> WIP: Don't use.

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

Therefore, at 5 seconds the car was 15 meters away.

seconds | meters
------- | ------
0       | 0
1       | 3
2       | 6
3       | 9
4       | 12
5       | 15
6       | 18
7       | 21
8       | 24
9       | 27
10      | 30

Here's a graph of the sequence:

![(line-0-3)](/img/(line-0-3).png)

As we look from any one second to the next, we can see that the distance always 
changes every time by 3 meters, so we say that the velocity of the car is 3 
meters per second, or `3 m/s`. This means that for every second you go, we 
expect you to move 3 meters, and therefore 20 seconds means 60 meters of travel.

