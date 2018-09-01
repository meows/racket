---
id: language-comparison
sidebar_label: Racket ⟷ JavaScript
hide_title: true
---

> WIP: Don't use!

# Racket ⟷ JavaScript

## Defining a Value

#### Racket

``` clojure
(define a 23)
```

#### JavaScript

``` javascript
const a = 23
let   b = 24
```

## Defining a Function

#### Racket

``` clojure
(define (triangle n)
   (if (zero? n)
       0
       (+ n (triangle (- n 1)))))
```

#### JavaScript

``` javascript
function triangle(n) {
   if (n === 0) {
      return 0
   }
   else {
      return n + triangle(n-1)
   }
}
```

### Using a Function

#### Racket

``` clojure
(triangle 5) ;; → 15
```

#### JavaScript

``` javascript
triangle(5) // → 15
```

### Lambda

Both Racket and JavaScript provide convenient ways for quickly creating
functions. Sometimes these are known as unnamed functions because we aren't
required to give them a name, although we could if we choose.

#### Racket

``` clojure
(define nums '(0 1 2 3 4))
(define add2 (λ (x) (+ x 2)))

(map (λ (x) (+ x 2)) nums) ;; → '(2 3 4 5 6)
(map add2 nums)            ;; → '(2 3 4 5 6)
```

#### JavaScript

``` javascript
const nums = [0, 1, 2, 3, 4]
const add2 = (x) => x + 2

nums.map(x => x + 2) // → [2, 3, 4, 5, 6]
nums.map(add2)       // → [2, 3, 4, 5, 6]
```

## Mathematical Functions

Racket has no association operator because it only has one way to read things.
The first thing in an expression is a function, and everything after are the
inputs. In some ways it's more elegant than the normal way of writing algebra
because you don't have to care about order of operations.

### Numeric Functions

| Racket | JavaScript | Description
| ------ | ---------- | -----------
|        | `()`       | Association
| `+`    | `+`        | Addition
| `-`    | `-`        | Subtraction
| `*`    | `*`        | Multiplication
| `/`    | `/`        | Division
| `expt` | `**`       | Exponentiation
| `log`  |            | Logarithm
| `abs`  | `Math.abs` | Absolute value
| `max`  | `Math.max` | Maximum value
| `min`  | `Math.min` | Minimum value

### Numeric Comparison

| Racket | JavaScript | Description
| ------ | ---------- | -----------
| `=`    | `===`      | Equality
|        | `!==`      | Inequality
| `<`    | `<`        | Less-than
| `>`    | `>`        | Greater-than
| `<=`   | `<=`       | Less-than or equal to
| `>=`   | `>=`       | Greater-than or equal to

### Geometry

| Racket | JavaScript | Description
| ------ | ---------- | -----------
| `sin`  | `Math.sin` | sine
| `cos`  | `Math.cos` | cosine
| `tan`  | `Math.tan` | tangent
| `pi`   | `Math.PI`  | pi

## Functions on Sequences

Description | Racket     | JavaScript
----------- | ------     | ----------
map         | `map`      | `map`
filter      | `filter`   | `filter`
reduce      | `for/fold` | `reduce`
range       | `range`    | |
length      | `length`   | `length`

## Boolean Functions

| Racket | JavaScript | Description
| ------ | ---------- | -----------
| `and`  | `&&`       | and
| `or`   | `||`       | or
| `not`  | `!`        | not

