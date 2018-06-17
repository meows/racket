---
id: challenge-8
sidebar_label: Challenge #8
title: Challenge #8
hide_title: true
---

# Racket Challenge #8

> It's recommended that you first solve [Challenge #7](challenge-7.md).

What's the smallest natural that is evenly divisible by all the numbers from 1
to 20?

```
#lang racket

(define answer
   (...)
)
```

## Note

Although I had you write your own [`lcm`](arithmetic-advanced.md) and 
[`gcd`](arithmetic-advanced.md) function, Racket actually provides them for you.
You can click on the links here to check out the new examples I've written,
although you can probably already guess how to use the functions.

The reason I had you write these functions even though Racket provides them for 
you is because they're important to know about in _math_, and also because many 
languages don't provide you these things.

## Possible Clues

* [`apply`](function-sequence.md)
* [`range`](function-sequence.md)
* [`lcm`](arithmetic-advanced.md)
* [`gcd`](arithmetic-advanced.md)
