// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
// Project Euler
// Problem 15

const factorial = (n, product=1) => n === 0
   ? product
   : factorial(n - 1, n * product)

const grid = (n) => factorial(n * 2) / factorial(n)**2

Math.trunc(grid(20))
