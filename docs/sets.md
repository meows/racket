---
id: sets
sidebar_label: Sets
hide_title: true
---

# Sets

A set is an extremely important idea in mathematics, so important and flexible
that it's used as the common language of mathematics. A set is also important
for a better definition of functions.

A set is a collection of 0 or more things which are unique. In math, if we
wanted to write down the set of unique naturals from `0..4`, we'd write:

`{ 0, 1, 2, 3, 4 }`

Notice that I said a set can have 0 or more unique things. This implies that we
can always ask how many things are inside the set, whether it's 0 or more. We
cannot have negative items in a set, just like, metaphorically speaking, we
cannot have negative items in a bag.

In the example above, we had a set of things that could be considered a set
with some natural numbers inside. In math you will likely encounter many more
sets that deal with other kinds of mathematical objects, but you can actually
have sets of just about anything, as long as you follow the rule of uniqueness
and countability:

`{ cat, dog, banana, 4 }`

A set can even have sets inside:

```
{ }

{0}

{0, {0}}

{ 0, 
  {0}, 
  {0, {0}}
}

{ 0, 
  {0}, 
  {0, {0}},
  {0, {0}, {0, {0}}} 
}
```

## Redefining the function

