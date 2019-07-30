---
layout: post
title: Nested List With Inline html
categories: html
author: Steve
published: true
---
# Header

[Data Visualizations in Python and Jupyter Notebook](https://nbviewer.jupyter.org/github/SSchoepfer/SSchoepfer.github.io/blob/master/Data%20Visualization%20with%20Python.ipynb)
* List Item 1
   * Nested Level 1 
       * Nested Level 2
---
#  
<p>This is a para.</p>
<div>
  <p>Another para.</p>
</div>

<div>
<ul>
<li>List Item 1
<ul>
<li>Nested List Item 1&nbsp;</li>
</ul>
</li>
<li>List Item 2
<ul>
<li>Nested List Item 2</li>
<li>Nested List Item 2 - 2</li>
</ul>
</li>
<li>List Item 3
<ul>
<li>Nested List Item 3
<ul>
<li>Nested List Item 3 - 3</li>
<li>Nested List Item 3 - 4</li>
</ul>
</li>
</ul>
</li>
<li>List Item 4</li>
<li>List Item 5</li>
</ul>
</div>

---

# More html
---
<ul>
<li>First item</li>
<li>Second item</li>
<li>Third item
<ul>
<li>Indented item</li>
<li>Indented item</li>
</ul>
</li>
<li>Fourth item</li>
</ul>
---
# Now with Markdown syntax 
---

- First item
- Second item
- Third item
    - Indented item
    - Indented item
- Fourth item

---
# Another Try: 

1. Number 1
2. Number 2
    * Number 4
    * Number 5
    
# One More Time: 

1. one
   * nested

2. two
   * nested

3. three
   * nested
   
   
# One MORE time: 

- one
    - nested

- two
    - nested

- three
    - nested
 
 ---
    
1. Item1
   1. SubItemA
   2. SubItemB
      - wat
        - hi

1. For this
   1. do this
      1. then this
      2. then this
   2. do this too

---


- For this
    - do this
    - then this
    - then this
    - do this too
    
    
 ---
 
* First level item 1
    - Second level item a
    - Second level item b
* First level item 2

^


*   This is just text.
    * this is a sub list item
      * this is a sub sub list item
* This is just text,
    spanning two lines
  * this is a nested list item.
  
---

* {:.cls} This item has the class "cls".
  Here continues the above paragraph.

* This is a normal list item.

This is a normal
paragraph.

And A Header
------------
And a paragraph

> This is a blockquote.

And A Header
------------


> This is a paragraph.
>
> > A nested blockquote.
>
> ## Headers work
>
> * lists too
>
> and all other block-level elements


---

kramdown
: A Markdown-superset converter

Maruku
:     Another Markdown-superset converter

---

definition term
: This definition will just be text because it would normally be a
  paragraph and the there is no preceding blank line.

  > although the definition contains other block-level elements

: This definition *will* be a paragraph since it is preceded by a
  blank line.
  
  
  This is a demo of all styled elements in Jekyll Now. 

[View the markdown used to create this post](https://raw.githubusercontent.com/barryclark/www.jekyllnow.com/gh-pages/_posts/2014-6-19-Markdown-Style-Guide.md).

This is a paragraph, it's surrounded by whitespace. Next up are some headers, they're heavily influenced by GitHub's markdown style.

## Header 2 (H1 is reserved for post titles)##

### Header 3

#### Header 4
 
A link to [Jekyll Now](http://github.com/barryclark/jekyll-now/). A big ass literal link <http://github.com/barryclark/jekyll-now/>
  
An image, located within /images

![an image alt text]({{ site.baseurl }}/images/jekyll-logo.png "an image title")

* A bulletted list
- alternative syntax 1
+ alternative syntax 2
  - an indented list item

1. An
2. ordered
3. list

Inline markup styles: 

- _italics_
- **bold**
- `code()` 
 
> Blockquote
>> Nested Blockquote 
 
Syntax highlighting can be used by wrapping your code in a liquid tag like so:

{{ "{% highlight javascript " }}%}  
/* Some pointless Javascript */
var rawr = ["r", "a", "w", "r"];
{{ "{% endhighlight " }}%}  

creates...

{% highlight javascript %}
/* Some pointless Javascript */
var rawr = ["r", "a", "w", "r"];
{% endhighlight %}
 
Use two trailing spaces  
on the right  
to create linebreak tags  
 
Finally, horizontal lines
 
----
****
