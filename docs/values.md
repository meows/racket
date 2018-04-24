---
id: values
title: Values
sidebar_label: Values
hide_title: true
---

# Values and Types

Just about all programming languages allow you to take information in some way, 
save it, find it again, and perhaps later change it in some useful way. A piece
of information that's actually saved on your computer can be called a _value_,
and values can be grouped into different _types_.

## Numbers

All numbers in Racket are real numbers, meaning they can be any kind of decimal
number you want with the limitation that your computer can run out of memory.
Therefore, you can't really store all the digits of pi on your computer even 
though pi is also a real number.

If you're in DrRacket, you might notice that sometimes you get numbers back in
the form of fractions. If you prefer, you can right-click the number and choose
a different repesentation, such as reduced fraction, mixed fraction, or decimal.

## Strings

A string is a sequence of any valid symbols in your language, but surrounded by
a pair of quotation marks, like `"hello .==.-. there"`. One common use of
strings is to store English-like information, or information written in our
natural language.

## Booleans

A boolean is value that can only be either `true` or `false`. As a shorthand or
alternative way, Racket also allows you to write `#t` and `#f`.
