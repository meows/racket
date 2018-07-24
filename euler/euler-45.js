// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
// Project Euler
// Problem 45

// Given that (triangle 285) === (pentagon 165) === (hexagon 143) === 40755.
//
// Find the next triangle number after 40755 that's both pentagonal and 
// hexagonal.

const pentagon = (n) => 1.5 * n*n + 1.5 * n
const hexagon = (n) => 2*n*n + -n
const triangle = (n) => 0.5 * n * n + 0.5 * n

const isPentagon = (n) => Number.isSafeInteger((Math.sqrt(24*n + 1) + 1) / 6)

function euler_45(start = 144) {
   let i = start
   
   while (true) {
      if   (isPentagon(hexagon(i))) return hexagon(i)
      else i++
   }
}

console.log(euler_45())
