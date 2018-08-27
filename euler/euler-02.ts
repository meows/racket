// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
// Project Euler
// Problem 2

// Find the sum of all even Fibonacci numbers under 4 million.

const isEven = x => x % 2 === 0

// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
// Solve

const euler = (s = 0, sn = 1, sum = 0) => 
   (4000000 < sn) 
      ? sum 
      : euler(
         sn, 
         s + sn, 
         isEven(sn) ? sum + sn : sum)

euler()
