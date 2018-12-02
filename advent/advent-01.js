// -----------------------------------------------------------------------------
// Data

const fs = require('fs')
const raw = fs.readFileSync('./data/advent-01.txt', { encoding: 'utf8' })
const integers = raw.split('\n').map(Number)

// -----------------------------------------------------------------------------
// Utility

const max = integers.length

const index = (current, vector) => (current + vector) % max
const sum = (a, b) => a + b

// -----------------------------------------------------------------------------
// Solution

const advent_01_a = integers.reduce(sum, 0)

function advent_02_b() {
   let sum = 0
   let uniques = new Set([0])

   for (let i=0; true; i++) {
      if (uniques.has(sum + integers[index(i)])) {
         return sum
      }
   }
}