// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
// Project Euler
// Problem 45

// Given that (triangle 285) === (pentagon 165) === (hexagon 143) === 40755.
//
// Find the next triangle number after 40755 that's both pentagonal and 
// hexagonal.

const pentagon   = (n) => 1.5*n*n + 1.5*n
const hexagon    = (n) => 2*n*n + -n
const triangle   = (n) => 0.5*n*n + 0.5*n
const isPentagon = (x) => Number.isSafeInteger((Math.sqrt(24*x + 1) + 1) / 6)

// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
// Solve

function euler_45(start = 144) {
   let now = NaN;

   for (let i = start; true; i++) {
      now = hexagon(i)
      if (isPentagon(now)) return now
   }
}

console.log(euler_45())
