---
id: graphing
sidebar_label: Graphing
title: Graphing
hide_title: true
---

> WIP: Do not use.

# Turning our Functions into Graphs

``` racket
#lang racket
(require plot)
(define square sqr)

(fn (graph fn/1
           #:grid? [grid? true]
           #:min [min -20]
           #:max [max 20]
           . fns)
    (def plot-input
         (list* (axes)
                (if grid? (tick-grid) empty)
                (function fn/1 #:width 1.3)
                (function identity #:style 'dot #:width 1.3 #:color 'gray)
                (map (curry function #:color 'blue #:width 1.3) fns)))
    (plot plot-input
          #:x-min min
          #:x-max max
          #:y-min min
          #:y-max max
          #:width 600
          #:height 600))

(graph square)
```
