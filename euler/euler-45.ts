// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
// Project Euler
// Problem 45

// Given that (triangle 285) === (pentagon 165) === (hexagon 143) === 40755.
//
// Find the next triangle number after 40755 that's both pentagonal and 
// hexagonal.

const pentagon = (n: number) => 1.5*n*n + 1.5*n
const hexagon  = (n: number) => 2*n*n + -n
const triangle = (n: number) => 0.5*n*n + 0.5*n

const isPentagon = (x: number) => Number.isSafeInteger((Math.sqrt(24*x + 1) + 1) / 6)

function euler_45(start = 144) {
   let i = start
   
   while (true) {
      if (isPentagon(hexagon(i))) return hexagon(i)
      else i++
   }
}

console.log(euler_45())
