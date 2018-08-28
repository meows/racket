// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
// Project Euler
// Problem 4

// Find the largest palindrome made from the product of two 3-digit numbers.

function isPalindrome(n) {
   const str = n.toString()
   return str === str.split('').reverse().join('')
}

function euler_04() {
   let best = 0

   for (let i=999; 100<i; i--) {
      for (let j=999; 100<j; j--) {
         let p = i * j
         if (best < p && isPalindrome(p)) {
            best = p
         }
      }
   }

   return best
}
