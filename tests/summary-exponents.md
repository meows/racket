# Rationals

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

$\dfrac{a}{b} / \dfrac{c}{d} := \dfrac{a}{b} * \dfrac{d}{c}$

## Exponentiation

Exponentiation of the rationals is defined by the below two rules, where 
$\{ a, b, n \} ∈ ℤ$. We cannot yet allow exponentiation by a rational because
that begs the question of $2^{\frac{1}{2}}$, to which there is no rational answer.

* $(\dfrac{a}{b})^n := \dfrac{a^n}{b^n}$

* $(\dfrac{a}{b})^{-1} := \dfrac{b}{a}$
