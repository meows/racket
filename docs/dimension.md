---
id: dimension
sidebar_label: Dimension
hide_title: true
---

# Dimensional Exercise

Have you ever heard the term 3D, or 3-dimensional? Some people say that the
world is spatially 3D, but what does that mean? One possibility is that they
mean if you wanted to meet with somebody, you needed to know at least three
_coordinates_.

Let's say a coordinate is a piece of information which you can represent with a
single integer or real number. If so, you can also imagine then that a
coordinate can be represented as a point on a number line.

You can also imagine that we can use a coordinate `x` to represent length, `y`
to represent height, and `z` to represent depth. If you were trying to program a
drone, it would only require these 3 pieces of information to successfully 
follow someone in 3D space. Otherwise you can imagine a comical situation where
the drone gets only two coordinates right, but the third wrong, like if the 
drone was just always at the wrong height.

But you might have also heard of the idea of 4-dimensional space, or even higher
dimensions. What does that mean? For example, if a circle is defined as the set
of all points equidistant from a center point, what would a 4D circle look like?

To answer that question, let's revisit the 2-dimensional flat world, where `x`
represents apples purchased, and `y` represents dollars spent. This seems like a
reasonable graph to make, as it's often important to keep track of money.

So where `(x, y)` represents a coordinate list, `(0, 0)` would mean when we buy
0 apples, we incur 0 dollars in cost; therefore `(5, 1)` would mean 5 apples
costs 1 dollar.

But now let's imagine that you're not very satisfied with the graph because you
think there are other important benefits and costs not being measured. For 
example, let's say we think that buying the first few apples will give us lots 
of happiness, but any apples after that give us decreasing happiness because 
we're too tired of apples.

So now we use `x` for apples purchased, `y` for dollars spent, and `z` for 
happiness. Where `(x, y, z)` represents a coordinate list, `(0, 0, 0)` means
buying 0 apples is associated with 0 dollars of cost and 0 change to happiness.
