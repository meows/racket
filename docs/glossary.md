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
[`list-ref`](function-sequence.md)
[`for/fold`](fold.md)

### Making new lists

[`list`](function-sequence.md)
[`list*`](function-sequence.md)
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
`abs`
`gcd`
`lcm`
`quotient`
`remainder`

### Geometry

These functions all consume a single input in radians, and they return a 
decimal number representing the _approximate_ ratio of different side lengths on 
a triangle.

`sin`
`cos`
`tan`
