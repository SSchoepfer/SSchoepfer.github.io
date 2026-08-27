---
layout: post
title: Building an AI-Powered Publishing Workflow With Claude Code
categories: misc
author: Steve
published: true
permalink: /ai-publishing-workflow/
tags: linux
---

The [previous post](/omarchy-and-claude-code/) was about getting a 2014 MacBook
Air running Linux and Claude Code. This one is about what that setup actually does
now, which is publish this blog with almost none of the busywork that used to sit
between finishing a draft and seeing it live.

## The blog was already here

I didn't start a blog for this. This site has been on GitHub Pages since 2016.
It's a [Jekyll](https://jekyllrb.com) site built on a port of ThemeFisher's
Airspace theme, with a custom domain pointed at it. The way it publishes has never
changed: posts are Markdown files in a `_posts` folder, and when I push a commit
to the `master` branch, GitHub builds the site and serves it at
stephenschoepfer.com a minute or so later. No build server of my own, no separate
deploy step.

The commit history tells on me. There's a burst of posts in 2019 when I was
studying and writing all the time, then years where I'd post twice and go quiet.
The writing was never the blocker. The blocker was everything around it. Coming
back after six months meant remembering the front matter format, discovering the
local preview didn't run anymore because some dependency had moved on without me,
and losing an evening to tooling before I could see a single word on screen. By
the time it worked I'd forgotten what I wanted to say.

## The pieces

Three things, none of them new on their own.

**Linux and the editor.** Covered last time. The machine runs Omarchy, and VS
Code has the Claude Code extension active, which puts an assistant in the editor
that can run commands and edit files, not just autocomplete.

**GitHub Pages.** The publishing target. Push to `master`, wait about a minute,
it's live. This has been true for years and it's still the least fussy way I know
to host a static site.

**Claude Code handling the mechanical parts.** This is the piece that changes how
it feels to use.

## What "automated" means here

It isn't a pipeline. There's no GitHub Action, no cron job, nothing watching a
folder. Automated here just means I stopped doing the repetitive steps by hand and
started asking for them.

When a draft is done, I tell Claude Code to publish it, and it runs the same
commands I would have:

```
git add _posts/2026-08-27-my-post.md
git commit -m "New post: My Post"
git push origin master
```

Then it waits for GitHub to finish building and checks that the page actually
loads:

```
gh api repos/SSchoepfer/SSchoepfer.github.io/pages/builds/latest --jq .status
curl -o /dev/null -w "%{http_code}" https://stephenschoepfer.com/my-post/
```

When those come back `built` and `200`, the post is live and I know it without
opening a browser to look. If the build errors, it tells me what broke.

That's the whole loop. A reader could run every one of those steps by hand, and
for years I did. The difference is that I no longer have to keep the sequence in
my head or catch it when I've fumbled a step.

It handled the setup rot too. When I came back to the site on the new machine the
local preview wouldn't build, because the Ruby that ships on a current Linux
install had dropped some libraries the old Jekyll still expected. That's the sort
of thing that used to end a session. This time I pasted in the errors, it worked
through them and added the missing pieces back, and the preview was running a few
minutes later. The specifics are in the last post.

## Outsource the fiddly parts

What I'd recommend to anyone is to hand the technical detail work to the AI tools
and keep your own attention on the writing and the shape of what you're making.
Dependency versions, git commands, why the build broke, the exact incantation to
get a preview running. None of that is why I keep a blog. It's overhead, and it's
the kind of narrow, well-documented problem these tools are genuinely good at. I
say what's wrong or what I want, it handles the mechanics, and I stay on the part
only I can do.

This goes double if you have an old Mac in a closet that Apple decided was
obsolete. Mine still runs fine. The hardware didn't die, the software support
did. Putting Linux on it and letting an assistant in the editor smooth over the
rough edges turned a drawer ornament back into something I reach for on purpose.
If that describes a machine you own, it's worth an afternoon.

## The judgment stays with me

The tradeoffs are worth saying plainly. Claude Code can push straight to
`master`, which is the live site, so I read the diff before anything goes out. The
commits carry my name, with a line noting the assist. Nothing gets published that
I haven't read. The tool takes away the friction, not the responsibility.

## Where this goes

Right now the trigger is me typing "publish this." Next I want to move more of the
drafting earlier, and have it turn notes I've left during the week into a rough
post I can react to on a Saturday. If that works, those long quiet stretches in my
commit history might finally close up.
