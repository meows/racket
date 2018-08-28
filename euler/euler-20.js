// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
// Project Euler
// Problem 20

// Find the sum of the digits in the number 100!

const sum = (a, b) => a + b

const digits = (n) => n
   .toString()
   .split('')
   .map(str => parseInt(str, 10))

const factorial = (n, product=1) => n === 0
   ? product
   : factorial(n - 1, n * product)

Array.from(Array(100), (_, v) => v + 1)
   .reduce((a, b) => a * b)
