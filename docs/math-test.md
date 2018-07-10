---
id: math-test
title: Linear Sequences
hide_title: true
sidebar_label: Linear Sequences
---

# Working with Functions on Linear Sequences

This section permits a calculator or use of a programming environment. A 
calculator is highly encouraged to avoid tedious work, as the student should've 
already been tested on basic arithmetic and order of operations.

## Applied Questions

### Concrete Values

There's a function `f` which accepts for input a natural `n`, and its definition 
is `f(n) = -10n + 5`.

- List the values of this function from `f(0)` to `f(5)`.
- Does this sequence have a constant or changing velocity?
- What is `f(100)`?
- If I were to graph this function, how would you describe the shape?

---

There's a function `f` which accepts for input a natural `x`, and its definition 
is `f(x) = x/2 - 4`.

- List the values of this function from `f(0)` to `f(5)`.
- Does this sequence have a constant or changing velocity?
- What is `f(100)`?
- If I were to graph this function, how would you describe the shape?

### Recursive

There's a function `f` which accepts for input a natural `n`, and its definition 
is:   
   1. `f(0) = 4`
   2. `f(n) = f(n-1) + 3`

- List the values of this function from `f(0)` to `f(5)`.
- What is `f(100)`?
- Does this sequence have a constant or changing velocity?
- Could you rewrite the function in a non-recursive way?
- Graph the values of this function from `f(0)` to `f(5)`.

---

There's a function `f` which accepts for input a natural `n`, and its definition 
is:
   1. `f(0) = 0`
   2. `f(n) = f(n-1) + 2n + -1`

- List the values of this function from `f(0)` to `f(5)`.
- What is `f(100)`?
- Does this sequence have a constant or changing velocity?
- Could you rewrite this function in a non-recursive way?
- Graph the values of this function from `f(0)` to `f(5)`.

### From a Table of Values

Below is a table of values containing measurements that somebody took on a
moving car, where `seconds passed` represents how many seconds have passed from
the start of measurement, and `meters away` represents how far the car was at
every second of measurement.

seconds passed | meters away
-------------- | -----------
0              | 10
1              | 17
2              | 24
3              | 31
4              | 38
5              | 45
6              | 52
7              | 59

1. If you graphed these points, what shape do you expect to see?

2. How far was the car from when we first started measuring?

3. Do the sequence of values for the car's distance have a constant or changing
   velocity?

4. Write a function called `meters` which could generate the same sequence of
   values as the table, and let it take `s` seconds for input.

---

Below is a table of values containing measurements that somebody took on a
moving car, where `seconds passed` represents how many seconds have passed from
the start of measurement, and `meters away` represents how far the car was at
every second of measurement.

seconds passed | meters away
-------------- | -----------
0              | 40
1              | 37
2              | 34
3              | 31
4              | 28
5              | 25
6              | 22
7              | 19

1. If you graphed these points, what shape do you expect to see?

2. How far was the car from when we first started measuring?

3. Do the sequence of values for the car's distance have a constant or changing
   velocity?

4. Write a function called `meters` which could generate the same sequence of
   values as the table, and let it take `s` seconds for input.

### From a Graph

Below is a graph of values containing measurements that somebody took on a
moving car, where `seconds` represents the time passed since we started
measuring, and `meters` represents the distance the car traveled based on the
time.

Write a function called `meters` to represent this graph, and let it take a
natural input `s` for seconds.

![test-2.png](/img/test-2.png)

---

Below is a graph of values containing measurements that somebody took on a
moving car, where `seconds` represents the time passed since we started
measuring, and `meters` represents the distance the car traveled based on the
time.

Write a function called `meters` to represent this graph, and let it take a
natural input `s` for seconds.

![test-1.png](/img/test-1.png)

---

Below is a graph of values containing measurements that somebody took on a
moving cat, where `seconds` represents the time passed since we started
measuring, and `meters` represents the distance the cat traveled based on the
time.

Write a function called `meters` to represent this graph, and let it take a
natural input `s` for seconds.

![test-1.png](/img/test-3.png)

## Abstract Mastery

> A **constant** means a value which doesn't change, as opposed to a variable.

There is a function `f` which accepts any natural input `n`, and its definition
is `f(n) = an + b`, where `a` and `b` are constants that I've hidden from you.

1. If you were to graph this function, what would it look like?

2. What would happen to the graph as I make `a` bigger or smaller? What happens
   when `a` is positive vs negative?

3. If I were to create a sequence of numbers from `f` starting from `f(0)`, what
   do you expect to happen as you make `a` bigger or smaller? What happens when
   `a` is negative?

4. What would happen to the graph as I make `b` bigger or smaller?

5. If I were to create a sequence of numbers from `f` starting from `f(0)`, what
   do you expect to happen as you make `b` bigger or smaller?

6. If I wanted to keep the graph of the function the same, but move it to the
   right or left, as well as up or down, then how should I change the function?

---

Let's say I have a graph on a function where the horizontal axis represents the
inputs, and the veritcal axis represents the outputs. Would you ever expect a
vertical line? How would you interpret that?

How might ratio and velocity be related?
