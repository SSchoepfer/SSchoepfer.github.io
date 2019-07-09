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

Now with Markdown syntax 

---

- First item
- Second item
- Third item
    - Indented item
    - Indented item
- Fourth item
