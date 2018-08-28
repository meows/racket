// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
// Project Euler
// Problem 9

const isTriangular = (a, b, h) => a**2 + b**2 === h**2
const is1000       = (a, b, h) => a + b + h === 1000
const hypotenuse   = (a, b) => Math.sqrt(a**2 + b**2)

function euler() {
   for (let a=500; 0<a; a--) {
      for (let b=500; 0<b; b--) {
         let c = hypotenuse(a, b)
   
         if (is1000(a, b, c) && isTriangular(a, b, c)) {
            return a * b * c
         }
      }
   }
}

euler()
