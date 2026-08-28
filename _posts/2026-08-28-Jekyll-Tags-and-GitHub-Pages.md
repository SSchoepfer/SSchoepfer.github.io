---
layout: post
title: Jekyll Tags and GitHub Pages
categories: misc
author: Steve
published: true
permalink: /jekyll-tags-github-pages/
tags: linux
---

The two posts I pushed this week both had `tags: linux` in their front matter. The tag showed up on each post but clicking it went nowhere.

The site keeps tag pages in a `tag/` directory, one file per tag. A post with `tags: linux` expects `tag/linux.md` to exist. If it doesn't, the link is there but the page isn't.

You could use a plugin to generate those pages automatically, but GitHub Pages runs Jekyll in safe mode and most plugins don't run. The files have to exist in the repo.

The fix is a three-line file:

```
---
layout: tagpage
title: "Tag: linux"
tag: linux
---
```

Saved as `tag/linux.md`, committed, pushed. Done after the next build.
