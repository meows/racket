---
id: javascript-1
sidebar_label: JavaScript 1
hide_title: true
---

# The types of information in JavaScript

## Defining a variable

### `let`

`let` allows you to save information behind a variable name.

``` javascript
let x = 10
let y = -x

x + y === 0  // → true
y = 10       // We can change the value behind a variable.
x + y === 0  // → false
```

> `===` allows you to compare whether two values are equal in JavaScript.

### `const`

`const` also allows you to define a constant, which means a variable that never
changes. Once you assign a value with `const`, your program will encounter an
error if you try to reassign another value to your constant.

``` javascript
const x = 10
const y = -x

x + y === 0 // → true
x = 3       // → Error: Cannot re-assign a constant variable.
x + y === 0 // → true
```

## Defining a function

A function can be defined using the `function` keyword, like below:

``` javascript
// 1. This function's name is same
// 2. The function accepts one input, named x
// 3. The function returns x
function same(x) {
   return x  // return will give the function output
}

// 1. This function's name is add1
// 2. The function accepts one input, named n
// 3. The function returns n + 1
function add1(n) {
   return n + 1
}

```

And here's now they're used:

``` javascript
same(3)       // → 3
add1(3)       // → 4
same(same(3)) // → 3
add1(add1(3)) // → 5
```

### Multiple parameters (inputs)

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

Another familiar example:

``` javascript
// Unlike Racket, these don't exist in JavaScript.
// That's why we have to write it ourselves.
function even(n) { return n % 2 === 0 }
function odd(n)  { return n % 2 !== 0 }

// Another advanced example
[0, 1, 2, 3].filter(even) // → [0, 2] 
[0, 1, 2, 3].filter(odd)  // → [1, 3]
```

### A familiar example

``` javascript
function fib(n) {
   if (n === 0) { return 0 }
   if (n === 1) { return 1 }
   else {
      return fib(n - 1) + fib(n - 2)
   }
}
```

``` clojure
(define (fib n)
   (cond [(= n 0) 0]
         [(= n 1) 1]
         [else (+ (fib (- n 1))
                  (fib (- n 2)))])
)
```
