# The Science of Sequences

A sequence is a collection of stuff which can be counted. Some sequences are
finite, whereas other sequences are ongoing. We can define a sequence with this
notation:

   $$(2^{-n})_{n=1}^{\infty} = \frac{1}{2} → \frac{1}{4} → \frac{1}{8} → \frac{1}{16} → ...$$

Notes:

  1. $(2^{-n})$ is the expression or function to be evaluated.
  2. $n=1$ is the starting value for $n$; there can be more variables.
  3. $\infty$ is the stopping point for the sequence. In this case there's no 
     stopping point.

A series is a process which sums a sequence, like this:

$$ \sum (2^{-n})_{n=1}^{\infty} = \frac{1}{2} + \frac{1}{4} + \frac{1}{8} + \frac{1}{16} + ...$$

Which we can then use to build a new sequence $S$:

  * $S_0 = \dfrac{1}{2}$
  
  * $S_1 = \dfrac{1}{2} + \dfrac{1}{4} = \dfrac{3}{4}$
  
  * $S_2 = \dfrac{1}{2} + \dfrac{1}{4} + \dfrac{1}{8} = \dfrac{7}{8}$
  
  * $S_3 = \dfrac{1}{2} + \dfrac{1}{4} + \dfrac{1}{8} + \dfrac{1}{16} = \dfrac{15}{16}$
  
  * $S = ( \dfrac{1}{2}, \dfrac{3}{4}, \dfrac{7}{8}, \dfrac{15}{16}, ... )$

We can see that as $S_n$ gets higher, we seem to get closer and closer to $1$.
To that end we question whether a sufficiently huge $S_n$ would ever reach $1$, 
and if so, then we ask whether it ever crosses $1$. If $S_n$ never crosses $1$,
then we can say that $1$ is its _limit_.


