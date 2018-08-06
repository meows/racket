---
id: javascript-2
sidebar_label: JavaScript 2
hide_title: true
---

## Javascript Functions

We've previously seen examples of how to define functions, but I haven't 
explained it in any detail. Let's look at some examples and talk about them as 
we go:

``` javascript
// finds the volume of a rectangular prism
function rectangular_prism(l, w, h) {
   return l * w * h
}

prism_volume(3, 4, 5) // → 60
```

In this example:
 * `prism_volume` is the name of the function
 * the function takes three inputs, and their names are `l`, `w`, and `h`
 * the definition of the function is whatever is stated within the brackets `{}`
 * but the function only returns when you use the `return` statement (some 
   *computer* functions return nothing, but remember that this is invalid in 
   math, where functions must *always* return one thing for every input)
