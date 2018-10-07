# Rationals $(ℚ, +, *)$

Rationals can be described as a 2-tuple of the canonical form $\dfrac{a}{b}$ 
where $\{ a, b \mid b ≠ 0 \} ∈ ℤ$. We can have $\{ a, b \} ∈ ℚ$ but there is a 
reducing procedure to "simplify" the expression into the canonical form, as we
can see with rational division below.

> Recall that $:=$ means _define_, which isn't the same thing as equality. We 
> use $=$ when we want to discuss a truth we discovered, whereas definitions are
> just claims of writing conveniences or shortcuts.

## Addition

$\dfrac{a}{b} + \dfrac{c}{d} := \dfrac{ad + bc}{bd}$

## Additive Inverse

$-\dfrac{a}{b} := \dfrac{-a}{b}$

## Subtraction

$\dfrac{a}{b} - \dfrac{c}{d} := \dfrac{a}{b} + -\dfrac{c}{d}$

## Multiplication

$\dfrac{a}{b} * \dfrac{c}{d} := \dfrac{ac}{bd}$

## Division

Division of two rationals is just another kind of multiplication. That's why
people often consider division to be unnecessary, merely a convenient shorthand
for writing multiplication.

> Note that $c ≠ 0$ so as to avoid division by $0$.

$$\dfrac{a}{b} / \dfrac{c}{d} := \dfrac{a}{b} * \dfrac{d}{c}$$

## Exponentiation

Exponentiation of the rationals is defined by the below two rules, where 
$\{ a, b, n \mid b ≠ 0 \} ∈ ℤ$. We cannot _yet_ allow exponentiation by a 
rational because that leads to questions like $2^{\frac{1}{2}}$, to which there 
is no rational answer.

* $(\dfrac{a}{b})^n := \dfrac{a^n}{b^n}$

* $(\dfrac{a}{b})^{-n} := (\dfrac{b}{a})^n$

## Identities

Based on the above rules we can now list some important properties of the
rationals. Let's say that $\{ x, y, z \} ∈ ℚ$:

Property                    | Description
--------                    | -----------
$x + y = y + x$             | $+$ is commutative
$(x + y) + z = x + (y + z)$ | $+$ is associative
$0 + x = x$                 | $+$ has an identity element
$x + -x = 0$                | $+$ has an inverse
$x * y = y * x$             | $*$ is commutative
$(x * y) * z = x * (y * z)$ | $*$ is associative
$1 * x = x$                 | $*$ has an identity element
$x * x^{-1} = 1$            | $*$ has an inverse (where $x ≠ 0$)
$x(y + z) = xy + xz$        | distributive property of $+$ and $*$
$(y + z)x = yx + zx$        | distributive property of $+$ and $*$
