---
id: javascript-0
sidebar_label: JavaScript 0
hide_title: true
---

# Introduction to JavaScript

JavaScript is one of the world's most popular languages, and it's what allows
companies like Google to make interesting websites like Google Maps, Gmail,
and other web "apps". JavaScript is also showing up as phone apps, and on just
about anything that's connected to the web.

## There's a hiccup

Although JavaScript is a powerful programming language, just as powerful as any
other, when JavaScript is run over the browser, such as when you visit a
website, you are also required to learn 2 other very small languages, namely
HTML and CSS. That may sound scary, but I assure you that those languages are
very small, and that you only need to learn a small amount to get up and going.
Most people don't learn these languages fully, and instead invest more time into
JavaScript.

## The first hiccup is HTML

When you visit a website such as this one, you might find all sorts of 
information delivered as:
 - text
 - pictures
 - sound
 - video

### HTML contains with tags

All information on a website is contained in HTML, and HTML uses pairs of tags 
to contain all information, like this:

``` html
<article>
    Hi there, this text counts as information, 
    and everything is always contained by a pair of tags.
</article>
```

I'm going to show you a very long sample of HTML, but I think you'll somehow 
find it familiar. Don't worry if you don't understand everything, because we're
just looking at it to get a feeling for it.

``` html
<html>
    <head>
       <title>Introduction to JavaScript</title>
    <head>

    <body>
       <!-- HTML Comment: This text doesn't count as code, and is for
             communicating with other humans. -->
       <article>
          <h1>Introduction to JavaScript</h1>
          <p>JavaScript is one of the world's most popular languages, and it's
             what allows companies like Google to make interesting websites like
             Google Maps, Gmail, and other web "apps". JavaScript is also showing
             up as phone apps, and on just about anything that's connected to the
             web.</p>
       </article>
       <article>
          <h2>There's a hiccup</h2>
          <p>Although JavaScript is a powerful programming language, just as
             powerful as any other, when JavaScript is run over the browser, such
             as when you visit a website, you are also required to learn 2 other
             very small languages, namely HTML and CSS. That may sound scary, but
             I assure you that those languages are very small, and that you only
             need to learn a small amount to get up and going. Most people don't
             learn these languages fully, and instead invest more time into
             JavaScript.</p>
       </article>
       <article>
          <h2>The first hiccup is HTML</h2>
          <p>When you visit a website, such as this one, you might see some
             different things, such as information delivered as:</p>
          <ul><!-- an unordered list -->
             <li>text</li>
             <li>pictures</li>
             <li>sound</li>
             <li>video</li>
          </ul>
          <p>All information on a website is contained in HTML. I'm going to show
             you a very long sample of HTML, but I think you'll somehow find it
             familiar:<p>
          <code><!-- To be brief, I won't include everything! --></code>
       </article>
    </body>
</html>
```

## The second hiccup is CSS

When you look at some of the things on a website, even something as plain as the
text, you might notice that it might look nice and perhaps even colorful. This
has nothing to do with HTML, as HTML is only responsible for containing all the
information on your website between enlosing brackets.

I won't be showing you too much CSS for now, but here's a little bit just to see
how it looks like:

``` css
article h1 {
    font: sans-serif;
    font-size: 1.3em;
}
article p {
    font: serif;
    font-size: 1em;
}
```

CSS code cannot work by itself. Instead, when your browser downloads this CSS
code, your browser looks for which bits of HTML to visually change. If we look
at the first example we can see `article h1`, followed by some brackets with
things inside.

### Selecting what you want

The `article h1` is how your browser knows what bit of HTML to change. In this
case, your browser will try to find any bit of HTML that has an `article` tag
with another `h1` tag inside of it.

In our case, there's only one situation where we can find an `article` tag with
another `h1` tag inside of it, and so these are the only parts of HTML that our
browser will visually change using our CSS rules.

``` html
<article>
    <h1>Introduction to JavaScript</h1>
    <p>JavaScript is one of the world's most popular languages, and it's
        what allows companies like Google to make interesting websites like
        Google Maps, Gmail, and other web "apps". JavaScript is also showing
        up as phone apps, and on just about anything that's connected to the
        web.</p>
</article>
```

## The third hiccup is JavaScript

Finally we get to the power of JavaScript, which is the most powerful piece of
the puzzle by far. I will tell you this, but you shouldn't repeat it too much
because people consider it mean, but many software engineers and computer 
scientists don't consider HTML or CSS to be programming languages.

I've mentioned before to you that all programming languages are equivalent to
algebra, implying that anything you can do in algebra you can do on computers,
and anything you can do on computers you can do on algebra. That's not generally
the case with HTML and CSS, which is why most people don't consider these to be
programming languges.

## Summary

* JavaScript is a powerful language that can run in many places, but when it's
  on the web, it uses HTML and CSS together to make a website.

* HTML is a language that is used to contain and organize all the information on
  your website into "tags" that look like `<html>random information</html>`.

* CSS is a language that can change how HTML looks on your website by targetting
  pieces of your HTML
