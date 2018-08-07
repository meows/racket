---
id: javascript-2
sidebar_label: JavaScript Math
hide_title: true
---

## JavaScript Arithmetic

### `+` Addition

``` javascript
5 + 5  // → 10
5 + -5 // → 0
```

### `-` Subtraction

``` javascript
5 - 5  // → 0
5 - -5 // → 10
```

### `*` Multiplication

``` javascript
5 * 5     // → 25
5 * (1/5) // → 1
```

### `/` Division

``` javascript
5 / 5     // → 1 
5 / (1/5) // → 25
```

### `**` Exponentiation

``` javascript
2**0 // →  1
2**1 // →  2
2**2 // →  4
2**3 // →  8
2**4 // → 16
2**5 // → 32

// I don't check for 2**(1/0)!
2**(1/1)  // → 2
4**(1/2)  // → 2
8**(1/3)  // → 2
16**(1/4) // → 2
32**(1/5) // → 2
```

### `Math.log` Logarithm

Surprisingly, JavaScript doesn't come with a log function that works in any 
base. You have to write it yourself:

``` javascript
const log = (power, base) => Math.log(power) / Math.log(base)

log(32, 2) // → 5
log(16, 2) // → 4
log(8, 2)  // → 3
log(4, 2)  // → 2
log(2, 2)  // → 1
log(1, 2)  // → 0
```
