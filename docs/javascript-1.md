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

``` javascript
function same(x) {
   return x
}

function add1(x) {
   return x + 1
}

// An advanced example with a taste of what's ahead.
[0, 1, 2, 3].map(same)  // → [0, 1, 2, 3] 
[0, 1, 2, 3].map(add1)  // → [1, 2, 3, 4]
```

### Using functions

``` javascript
same(3)       // → 3
add1(3)       // → 4
add1(add1(3)) // → 5
```

### Some familiar examples

``` javascript
function fib(n) {
   if (n === 0) { return 0 }
   if (n === 1) { return 1 }

   return fib(n-1) + fib(n-2)
}

function factorial(n) {
   if (n === 0) { return 1 }
   
   return n * factorial(n-1)
}

function triangle(n) {
   if (n === 0) { return 0 }

   return n + triangle(n-1)
}
```
