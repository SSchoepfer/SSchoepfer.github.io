---
layout: post
title: Nested List With Inline html
categories: html
author: Steve
published: true
---

# html still not redering correctly on github pages (?) 
<ul>
<li>List Item 1
<ul>
<li>Nested List Item 1&nbsp;</li>
</ul>
</li>
<li>List Item 2
<ul>
<li>Nested List Item 2</li>
<li>Nested List Item 2 - 2&nbsp;</li>
</ul>
</li>
<li>List Item 3
<ul>
<li>Nested List Item 3
<ul>
<li>Nested List Item 3 - 3&nbsp;</li>
<li>Nested List Item 3 - 4</li>
</ul>
</li>
</ul>
</li>
<li>List Item 4</li>
<li>List Item 5&nbsp;</li>
</ul>
<p>&nbsp;</p>

---

# More html (not rendering correctly?) 
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
