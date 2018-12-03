// -----------------------------------------------------------------------------
// Data

const fs = require('fs')
const raw = fs.readFileSync('./data/advent-01.txt', { encoding: 'utf8' })
const integers = raw.split('\n').map(Number)

// -----------------------------------------------------------------------------
// Utility

const max = integers.length

const index = current => current % max
const sum = (a, b) => a + b

// -----------------------------------------------------------------------------
// Solution

const advent_01_a = integers.reduce(sum, 0)

const advent_01_b = function() {
   let sum = 0
   let uniques = new Set()

   for (let i=0; true; i++) {
      const next = sum + integers[index(i)]
      uniques.add(sum)

      if (uniques.has(next)) return next

      sum = next
   }
}()

console.log(`advent(1, A) ↦ ${advent_01_a}.`)
console.log(`advent(1, b) ↦ ${advent_01_b}.`)
