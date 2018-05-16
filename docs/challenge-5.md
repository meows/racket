---
id: challenge-5
sidebar_label: Challenge #5
title: Challenge #5
hide_title: true
---

# Racket Challenge #5

> Make sure you've read the section on [recursion](recursion.md) before progressing.

The `triangle` function takes a natural number `n` for input and sums up all the 
naturals less than or equal to `n`.

* `triangle(4)` is the same as         `4 + 3 + 2 + 1 + 0`, which is `10`.
* `triangle(5)` is the same as     `5 + 4 + 3 + 2 + 1 + 0`, which is `15`. 
* `triangle(6)` is the same as `6 + 5 + 4 + 3 + 2 + 1 + 0`, which is `21`.

Here are a few more examples:

n     | function   | result
----- | ---------- | ------
0     | `triangle` | 0
1     | `triangle` | 1
2     | `triangle` | 3
3     | `triangle` | 6
4     | `triangle` | 10
5     | `triangle` | 15
6     | `triangle` | 21
7     | `triangle` | 28
8     | `triangle` | 36
9     | `triangle` | 45
10    | `triangle` | 55

## Problem

Given that the `triangle` function can be defined for any natural number `n` in 
two simple rules:

1. `triangle(0)` is equal to `0`
2. `triangle(n)` is equal to `n + triangle(n - 1)`

...write a _recursive_ definition for `triangle` in Racket.
