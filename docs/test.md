## Complex Definition

$C(a_1, a_2) + C(b_1, b_2) := C(a_1 + b_1, a_2 + b_2)$

$C(a_1, a_2) * C(b_1, b_2) := C(a_1 b_1 - a_2 b_2, a_1 b_2 + a_2 b_1)$

## Ring Identities

$(a_1, a_2) + (b_1, b_2) + (c_1, c_2)$ is associative for computing an additive
sequence of complex numbers.

   1. $(a_1 + b_1, a_2 + b_2) + (c_1, c_2) = (a_1 + a_2) + (b_1 + c_1, b_2 + c_2)$

   2. $(a_1 + b_1 + c_1, a_2 + b_2 + c_2) = (a_1 + b_1 + c_1, a_2 + b_2 + c_2)$

$(a_1, a_2) * (b_1, b_2) * (c_1, c_2)$ is associative for computing a 
multiplicative sequence of complex numbers.

   1. $ℂ(a_1 b_1 - a_2 b_2, a_1 b_2 + a_2 b_1) * ℂ(c_1, c_2)$
   2. $ℂ(a_1 b_1 c_1 - a_2 b_2 c_1 -  a_1 b_2 c_2 - a_2 b_1 c_2, a_1 b_1 c_2 - a_2 b_2 c_2 + a_1 b_2 c_1 + a_2 b_1 c_1)$

   ---

   1. $ℂ(a_1, a_2) * ℂ(b_1 c_1 - b_2 c_2, b_1 c_2 + b_2 c_1)$
   2. $ℂ(a_1 b_1 c_1 - a_1 b_2 c_2 - a_2 b_1 c_2 - a_2 b_2 c_1, a_1 b_1 c_2 + a_1 b_2 c_1 + a_2 b_1 c_1 - a_2 b_2 c_2)$

$ℂ(a_1 b_1 c_1 - a_2 b_2 c_1 -  a_1 b_2 c_2 - a_2 b_1 c_2, a_1 b_1 c_2 - a_2 b_2 c_2 + a_1 b_2 c_1 + a_2 b_1 c_1) = ℂ(a_1 b_1 c_1 - a_1 b_2 c_2 - a_2 b_1 c_2 - a_2 b_2 c_1, a_1 b_1 c_2 + a_1 b_2 c_1 + a_2 b_1 c_1 - a_2 b_2 c_2)$ and therefore associativity is proven for multiplication of complex numbers.

This should provide the sketch for finding associativity for any sequence of 
2-tuples under some binary operator, where the underlying subtype is rational or
real.

