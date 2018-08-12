// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
// Project Euler
// Problem 1
//
// Give the sum of all integers between 1 to 1000 that's divisible by either 3 
// or 5.

function euler(max = 1000) {
   let sum = 0

   while (max--) {
      if (max % 3 === 0 || max % 5 === 0) {
         sum += max
      }
   }

   return sum
}
