// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
// Project Euler
// Problem 6

// Find the difference between the sum of the squares of the first one hundred 
// natural numbers and the square of the sum.

const square = x => x**2
const sum = (a, b) => a + b
const from1to100 = Array.from(Array(100), (_, v) => v + 1)

const square_of_sum = square(from1to100.reduce(sum))
const sum_of_squares = from1to100.map(square).reduce(sum)

square_of_sum - sum_of_squares