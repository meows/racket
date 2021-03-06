---
id: glossary
title: Glossary
sidebar_label: Glossary
hide_title: true
---

# Racket Glossary

Here we list all the Racket functions which we've learned or might use.

## Defining Functions and Values

These allow you to save values behind variable names, and they also allow you to
define your own functions.

[`define`](define.md)
[`lambda`](lambda.md)
`let`

## Conditional

Conditionals allow you to change what happens in your program based on any rules
you set.

[`if`](if.md)
[`cond`](cond.md)

## Functions on Lists

These functions are all designed for working on lists.

[`filter`](function-sequence.md)
[`map`](function-sequence.md)
[`for/fold`](function-sequence.md)
[`apply`](function-sequence.md)
[`first`](function-sequence.md)
[`rest`](function-sequence.md)
[`last`](function-sequence.md)
[`sequence-ref`](function-sequence.md)
[`for/fold`](fold.md)
`cons`

### Making new lists

[`list`](function-sequence.md)
`range`

## Boolean Operators

These functions take one or more booleans and always returns a boolean.

`or`
`and`
`not`

## Testing Types

These functions can test the type of any value.

`number?`
`natural?`
`integer?`
`rational?`
`real?`
`list?`
`boolean?`
`string?`
`procedure?`
`equal?`

## Functions on Numbers

### Numeric Comparison

These functions consume one or more numbers and returns a boolean.

`=`
`<`
`>`
`<=`
`>=`
`zero?`

### Arithmetic

These functions consume one or more numbers and returns a number.

`+`
`-`
`*`
`/`
`add1`
`sub1`
`sqr`
`sqrt`
`expt`
`log`
`abs`
`gcd`
`lcm`
`quotient`
`remainder`
`modulo`
`round`
`max`

### Geometry

These functions tend to work with radians, and they often give approximations.

[`sin`](geometry.md)
[`cos`](geometry.md)
[`tan`](geometry.md)
[`asin`](geometry.md)
[`acos`](geometry.md)
[`atan`](geometry.md)
[`degrees->radians`](geometry.md)
[`radians->degrees`](geometry.md)
