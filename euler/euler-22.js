// -----------------------------------------------------------------------------
// Project Euler
// Problem 22

const fs = require('fs')
const readStream = fs.createReadStream('./data/euler-22.txt', 'utf8')

let result = ''

readStream
   .on('data', (chunk) => result += chunk)
   .on('end', () => {
      let raw = result.replace('\"', '')
         .split(',')
      console.log(raw[1])
   })