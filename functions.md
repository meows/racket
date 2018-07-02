# Working with Functions on Linear Sequences

This section permits a calculator! Calculator is highly encouraged to avoid
tedious work. Students should have already been tested on basic arithmetic and
order of operations.

## Applied Questions

### Concrete Values

`f` is a function which accepts a natural `n` for input, and its definition is
`f(n) = -10n + 5`.

- List the values of this function from `f(0)` to `f(5)`.
- Does this sequence have a constant or changing velocity?
- What is `f(100)`?
- If I were to graph this function, how would you describe the shape?

`f` is a function which accepts a natural `x` for input, and its definition is
`f(x) = x/2 - 4`.

- List the values of this function from `f(0)` to `f(5)`.
- Does this sequence have a constant or changing velocity?
- What is `f(100)`?
- If I were to graph this function, how would you describe the shape?

### Recursive

`f` is a function which accepts a natural `n` for input, and its definition is:
   - `f(0) = 4`
   - `f(n) = f(n-1) + 3`

- What is `f(0)`?
- What is `f(5)`?
- What is `f(100)`?
- Does this sequence have a constant or changing velocity?
- Could you rewrite the function in a non-recursive way?
- Graph the values of this function from `f(0)` to `f(5)`.

`f` is a function which accepts a natural `n` for input, and its definition is:
   - `f(0) = 0`
   - `f(n) = f(n-1) + 2n + -1`

- What is `f(0)`?
- What is `f(5)`?
- What is `f(100)`?
- Does this sequence have a constant or changing velocity?
- Could you rewrite this function in a non-recursive way?
- Graph the values of this function from `f(0)` to `f(5)`.

### From a Table of Values

Below is a table of values containing measurements that somebody took on a car,
where _seconds passed_ represents how many seconds have passed from the start of
measurement, and _meters away_ represents how far the car was at every second of
measurement.

seconds passed | meters away
-------------- | -----------
0              | 10
1              | 17
2              | 24
3              | 31
4              | 38
5              | 45
6              | 52
7              | 59

1. If you graphed these points, what do you expect to see?

2. How far was the car from when we first started measuring?

3. Do the sequence of values for the car's distance have a constant or changing
   velocity or acceleration?

4. Write a function called `meters` to represent this table, and let it take
   _seconds passed_ `s` for input, and let it output the same sequence of values
   as _meters away_.

## Abstract Mastery

There is a function `f` which accepts any natural input `n`, and its definition
is `f(n) = ax + b`, where `a` and `b` are constants that I've hidden from you.

1. If you were to graph this function, what would it look like?

2. What would happen to the graph as I make `a` bigger or smaller?

3. What would happen to the graph as I make `b` bigger or smaller?

4. If I wanted to keep the graph of the function the same, but move it to the 
   right or left, as well as up or down, then how should I change the function?

5. What happens if `a` is negative?

6. What happens if `b` is negative?
