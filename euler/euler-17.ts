// -----------------------------------------------------------------------------
// Project Euler
// Problem 17


/* If the numbers 1 to 5 are written out in words: one, two, three, four, five, 
   then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

   If all the numbers from 1 to 1000 (one thousand) inclusive were written out 
   in words, how many letters would be used?

   NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and 
   forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 
   letters. The use of "and" when writing out numbers is in compliance with 
   British usage. 

*/

const from1to9 = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
const ten = 'ten'
const from11to19 = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
const tens = ['twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
const hundreds = from1to9.map(n_ones => `${n_ones} hundred`)
const thousands = from1to9.map(n_ones => `${n_ones} thousand`)

const from1to19 = [...from1to9, ten, ...from11to19]
const from20to99 = tens.reduce(
   (state_tens, n_ten) => state_tens.concat(from1to9.reduce(
      (state_ones, n_one) => state_ones.concat(`${n_ten} ${n_one}`),
      [n_ten],
   )), 
   [],
)

const from1to99 = [...from1to19, ...from20to99]


const from100to999 = hundreds.reduce(
   (state_hundreds, n_hundred) => state_hundreds.concat(from1to99.reduce(
      (state_1to99, n_ten) => state_1to99.concat(`${n_hundred} and ${n_ten}`),
      [n_hundred],
   )),
   [],
)

const from1to1000 = [...from1to99, ...from100to999, thousands[0]]
const euler_17 = from1to1000.map(str => str.replace(/\s/g, ''))
