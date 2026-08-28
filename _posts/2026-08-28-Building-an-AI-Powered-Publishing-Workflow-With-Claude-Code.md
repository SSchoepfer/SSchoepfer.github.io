---
layout: post
title: Building an AI-Powered Publishing Workflow With Claude Code
categories: misc
author: Steve
published: true
permalink: /ai-publishing-workflow/
tags: linux
---

The [previous post](/omarchy-and-claude-code/) was about getting a 2014 MacBook Air running Linux and Claude Code. This one is about what that setup actually does now.

## The blog was already here

This site has been on GitHub Pages since 2016. Posts are Markdown files in a `_posts` folder. When I push to `master`, GitHub builds and serves the site a minute or so later. No build server of my own, no deploy step.

The commit history tells on me. A burst of posts in 2019, then years where I'd post twice and go quiet. The writing wasn't the blocker. Coming back after six months meant remembering the front matter format, finding the local preview broken because some dependency had moved on, and losing an evening to tooling before I could see a single word on screen. By the time it worked I'd forgotten what I wanted to say.

## The pieces

The machine runs Omarchy. VS Code has the Claude Code extension, which puts an assistant in the editor that can run commands and edit files, not just autocomplete. GitHub Pages is the publishing target — push to `master`, wait a minute, it's live. Claude Code handles the mechanical parts.

## What "automated" means here

It isn't a pipeline. There's no GitHub Action, no cron job, nothing watching a folder. Automated just means I stopped doing the repetitive steps by hand and started asking for them.

When a draft is done, I tell Claude Code to publish it:

```
git add _posts/2026-08-27-my-post.md
git commit -m "New post: My Post"
git push origin master
```

Then it checks the build:

```
gh api repos/SSchoepfer/SSchoepfer.github.io/pages/builds/latest --jq .status
curl -o /dev/null -w "%{http_code}" https://stephenschoepfer.com/my-post/
```

When those come back `built` and `200`, the post is live. If the build errors, it tells me what broke.

A reader could run every one of those steps by hand, and for years I did. The difference is I no longer have to keep the sequence in my head.

It handled the setup rot too. When I came back on the new machine the local preview wouldn't build. I pasted in the errors, it worked through them, and the preview was running a few minutes later. The specifics are in the last post.

The commits carry my name, with a line noting the assist. Nothing goes out that I haven't read.

Next I want it turning notes I've left during the week into a rough post I can react to on a Saturday. If that works, those long quiet stretches in my commit history might finally close up.
