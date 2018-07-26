---
id: atom
sidebar_label: Atom
hide_title: true
---

# Atom

An atom means a [sequence](sequence.md) of one or more symbols from your
[alphabet](alphabet.md). In a sense atoms are like words or names that we're
allowed to make up using the "letters" or symbols from our alphabet. And just
like English words, we're allowed to have atoms which are a sequence of merely
one letter or symbol long. For example, let's say that our alphabet only allows
the letters `a...z`. Here are some example atoms using our rule:
 * `a`
 * `i`
 * `dog`
 * `eagle`
 * `dogeagle`
 * `zzzfrancezzz`

Or, if we are allowed to use other symbols like `$ # @ $ © = -`, we might create
atoms like:
 * `===-===`
 * `#el@lo$`
 * `©@$#`

However, as a special rule, I need to make a few complicating exceptions for
Racket, the language that we're going to be using:
 * Brackets and parenthesis like `( )` can't be freely used *yet*, because we
   use this as a special symbol to create lists.
 * `"` is used to create strings, like `"hello there"`
 * `#` this is special and will be discussed later.
 * `'` this is special and will be discussed later.
 * `.` this is special and will be discussed later.
 * There will a be a few more exceptions I'll make to you later down the line,
   but not much more.

Other than that, feel free to make up new names, words, or *atoms*, as you
please. `is-this-a-prime-number?` is a valid name in Racket if you want to use
that, although that's probably a little long.

One reason we take the time to learn the word atom is so that when we're in a
discussion, we can say that `pineapple` is one atom, and not `pine` plus 
`apple`. We're not allowed to split it any further. As a trivia fact, the word 
atom came from the Greek word for uncuttable, _"atomos"_.
