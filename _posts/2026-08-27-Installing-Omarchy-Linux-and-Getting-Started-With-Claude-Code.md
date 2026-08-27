---
layout: post
title: Installing Omarchy Linux and Getting Started With Claude Code
categories: misc
author: Steve
published: true
permalink: /omarchy-and-claude-code/
tags: linux
---

I just wiped a 2014 MacBook Air and put Linux on it for the first time. Not a
dual-boot, not a live USB to poke at for an afternoon. This is the actual daily
machine now. The distro is [Omarchy](https://omarchy.org), and within a couple of
hours I had Claude Code running inside VS Code and was pushing to this blog again.
Here's how it went as a complete Linux beginner, with the parts that tripped me
up.

## Why Omarchy on a twelve-year-old laptop

The Air had been sitting in a drawer. macOS stopped updating it years ago and
every app was starting to complain. Omarchy is an opinionated Arch Linux setup.
The window manager, terminal, fonts, and keybindings are already chosen for you,
so you're not assembling a desktop from parts on day one. That is exactly what I
wanted, because I don't know enough yet to have opinions about a compositor.

Old Intel Mac hardware turns out to be a good target for Linux. It's plain, ordinary
x86 hardware under the fruit logo, so most things just work. The trackpad,
display, and battery were all fine out of the box.

## Making the install USB

You install from a bootable USB stick, so the first step is getting the Omarchy
ISO onto one. I used a 16GB stick, which is more than enough. Anything 8GB or
larger works, and whatever is on it gets erased, so don't use one with files you
want to keep.

The ISO is a single download from the Omarchy site. To write it to the stick I
used [balenaEtcher](https://etcher.balena.io/), a free tool that runs on Mac,
Windows, and Linux. It does one job and makes it hard to get wrong: pick the ISO
file, pick the USB drive, click Flash. It verifies the write when it finishes.
The whole thing took a few minutes.

You can do the same job from the command line with `dd`, but Etcher won't let you
accidentally target your main drive, which is worth a lot when you're new to
this.

Once it was done I plugged the stick into the Air, held the Option key while it
powered on, and picked the USB drive from the Mac's boot menu.

## First impressions

It's fast, which I did not expect from a machine this old. The whole thing is
keyboard driven. That was confusing for about a day and then it clicked. Windows
tile themselves instead of floating in a pile, and there's no dock to dig through.
The learning curve is real, but most of it is in the first day or two.

## Getting Claude Code into VS Code

VS Code installed without any trouble. [Claude
Code](https://www.anthropic.com/claude-code) runs as an extension inside it. Once
it's activated you get a chat panel that can run commands, edit files, and read
your project, not just suggest snippets.

Here's the beginner mistake that cost me time. Signing into GitHub inside VS Code
is not the same as logging in on the terminal. I clicked the Accounts button in
VS Code, authorized GitHub, saw a green checkmark, and assumed I was done. I
wasn't. That sign-in only covers VS Code's own features. The command line, where
`git push` and cloning actually happen, has a separate login. You do that one in
the integrated terminal:

```
gh auth login
```

Pick **GitHub.com**, then **HTTPS**, say **yes** to authenticating git
operations, and choose **login with a web browser**. It shows you a one-time
code, you paste it into the browser, and you're done. After that `git push` works
from the terminal with no extra prompts. Two separate logins, one for the editor
and one for the shell, and the checkmarks look identical. Nobody warned me about
that.

## Reviving this blog on the new machine

This site is built with [Jekyll](https://jekyllrb.com), and it's an old version of
it. The Ruby that ships on a current Linux install is newer than the site
expects, and newer Ruby has quietly dropped a handful of small libraries that old
Jekyll still depends on. The first build failed with a screen full of errors.

I had Claude Code work through it. It added the missing libraries back in the
`Gemfile`, fixed one incompatibility that was crashing the live-preview server,
and updated a deprecated setting in the config. None of that changes how GitHub
builds the published site, since GitHub runs its own build. It only matters for
the preview running locally on this laptop. After that,

```
bundle exec jekyll serve --livereload
```

served the whole site at `localhost:4000` and rebuilt it every time I saved a
file.

## Where I landed

A laptop that was headed for a landfill is now my writing machine. Claude Code is
in the editor, GitHub is wired up on the command line, and the live preview is
running. This post is the first thing I've written on the new setup.

If you're looking at an old Mac and a Linux download, the hardware is not the
scary part. The scary part is the hundred small conventions you don't know yet,
and that's the sort of thing it helps to have an assistant in the editor for.
