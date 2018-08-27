const isEven = x => x % 2 === 0

const euler = (s = 0, sn = 1, sum = 0) => 
   (4000000 < sn) 
      ? sum 
      : euler(
         sn, 
         s + sn, 
         isEven(sn) ? sum + sn : sum)
