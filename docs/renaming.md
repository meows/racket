---
id: Renaming
title: Renaming
hide_title: true
sidebar_label: Renaming
---

# Rename anything

In Racket you're allowed to rename anything, even the way you `define` variables
and functions:

``` racket
(require (rename-in racket/base [define fn]))
(require (rename-in racket/base [define def]))

(fn (add2 x) (+ x 2))
(def age 10)
(add2 age) ;; 12
```
