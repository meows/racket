// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
// Project Euler
// Problem 12

const isEven = x => x % 2 === 0

const divisorCount = (n) => {
   let count = 0
   let factor = Math.round(n / 2)

   while (factor--) {
      if (n % factor === 0) count++
   }

   return isEven(count)
      ? count + 1
      : count + 2
}
