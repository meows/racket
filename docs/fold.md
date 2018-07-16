---
id: fold
sidebar_label: fold
title: fold
hide_title: true
---

# `for/fold`

## A few examples first

`for/fold` is one of the hardest but most powerful functions there are over
sequences, so I'm going to show you examples first.

### Adding numbers

This example of `for/fold` has 3 inputs inside:
  1. `([sum 0])`
  2. `([n (range 11)])`
  3. `(+ sum n)`

``` scheme
;; adds all the numbers from 0 to 10
(for/fold ([sum 0])        ;; the current sum
          ([n (range 11)]) ;; the sequence we're stepping over
          (+ sum n)        ;; the next step of the sum
)
```

Now let's look inside the `for/fold`:

  1. Let there be a variable called `sum`, which we will initially set to `0`.
  2. For every nth sequence item `n` in the naturals `0..10`, update the current
     `sum` to be `sum + n`.
  3. When we bump into the end of the sequence, we give back the updated `sum`.

---

### Factorial

First we define a function `factorial` which accepts a natural `n`. Then we
return whatever is the result of `for/fold`.

``` scheme
(define (factorial n)
    (for/fold ([product 1])            ;; the current product
              ([i (range 1 (add1 n))]) ;; the sequence we're stepping over
              (* product i)            ;; the next step of the product
    )
)
```

Now let's look inside the `for/fold`:

  1. Let there be a variable called `product` initially set to `1`.
  2. For every nth sequence item `i` in the naturals `1..n`, update the current
     `product` to be `product * n`.
  3. When we bump into the end of the sequence, we give back the updated
     `product`.

> Notice that in Step 2, we start from 1 and not 0 like most ranges. That's 
> because we're trying to find a product, and multiplying by 0 destroys 
> everything.

---

### Triangle

We first define a function `triangle` which accepts a natural `n` and returns 
the result of `for/fold`.

``` scheme
(define (triangle n)
    (for/fold ([sum 0])              ;; current sum
              ([i (range (add1 n))]) ;; the sequence we're stepping over
              (+ sum i)              ;; the next step of the sum
    )
)
```

Now let's look inside the `for/fold`:

  1. Let there be a variable called `sum` and let it be initially set to `0`.
  2. Let us assign the variable `i` at every step for every nth item in `0..n`.
  3. As we step through `0..n`, let the value of the next `sum` be `sum + i`.

---

### Euler 1

This example should be very familiar to you, as it's one of the Project Euler
problems you completed early on, but now we're trying to solve it with
`for/fold`.

First we define a function called `div-by-3-or-5?` which accepts a natural `n`
and returns a [boolean](/docs/values#booleans) to tell you whether `n` is
divisible by either `3` or `5`.

``` clojure
;; Finds if a number is divisible by 3 or 5, leaving no remainder.
(define (div-by-3-or-5? n)
    (or (zero? (remainder n 3))
        (zero? (remainder n 5))
    )
)
```

``` scheme
;; Find the sum of all numbers under 1000 that's divisible by either 3 or 5.
(for/fold ([sum 0])                             ;; the sum, updated step by step
          ([n (range 1000)])                    ;; the sequence to run over
          (if (div-by-3-or-5? n) (+ sum n) sum) ;; the next step of the sum
)
```

Now let's look inside the `for/fold`:

1. Let there be a variable `sum` and let it be initially set to `0`.
2. Let us walk, step by step over the sequence `0..999`, assigning the name `n`
   for every nth sequence item.
3. For every step in the sequence which brings the next `n`, we use `if` and
   `div-by-3-or-5?` to check if `n` is divisible by 3 or 5:
   - if it's divisible, then we give back `sum + n` as the next value for `sum`.
   - if it's not divisible, then we give back the old `sum`, thereby doing
     nothing to it.
4. When we've stepped through every sequence item in `0..999`, we give back the
   updated `sum`.

---

## Why use `for/fold`?

`for/fold` is a tool for doing just about _anything_ you want to a sequence.
Lists are sequential, strings are sequential, and you'll learn about more
sequential things later on.

`for/fold` is so flexible that if you wanted, you could replicate the power of
`map` or `filter`.

### `myMap`

`map` is a function which consumes two inputs, a function and a list, so if we
were to write our own `myMap`, our function should also take two inputs, a
function `fn` and a sequence `seq`.

``` scheme
(define (myMap fn seq)
    (for/fold ([lst (list)])    ;; current list
              ([i seq])         ;; the sequence we're running over
              (cons (fn i) lst) ;; the next list
    )
)
```

#### In Plain English

First we define a function `myMap` which takes for input a function `fn` and a
sequence `seq`. This function will return whatever is the result of `for/fold`.
Now let's examine what happens inside `for/fold`:

1. Let there be a variable called `lst`, and let it be initially set to the
   value of an empty list `(list)`.
2. Let us step through every item `i` in the sequence `seq`.
3. For every `i` in `seq`, add the result of `(fn i)` to `lst`.
4. When we're done stepping through everything, return the updated `lst`.

> Where did `fn` and `seq` come from? It came from when we defined our function
> `myMap` and we accepted two inputs called `fn` and `seq`.

#### Using `myMap`

If you're feeling a little rusty about the idea of returning functions, you 
might want to check out the section on [Making Many Functions](function-higher.md).

``` scheme
(define (line p0 v)
    (λ (x)
       (+ p0 (* x v))
    )
)

(myMap sqr         (range 5)) ;; → '(0 1 4 9 16)
(myMap add1        (range 5)) ;; → '(1 2 3 4 5)
(myMap (line 3 0)  (range 5)) ;; → '(3 3 3 3 3)
(myMap (line -3 3) (range 5)) ;; → '(-3 0 3 6 9)
(myMap (line 3 -3) (range 5)) ;; → '(3 0 -3 -6 -9)
```
