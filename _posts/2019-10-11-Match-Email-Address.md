---
layout: post
published: true
author: Steve
tags: python
categories: Python
---
This content was taken from [Chris Albon](https://chrisalbon.com/regex/patterns/match_email_addresses/)

Written in Jupyter Notebook, then posted to github page using the convert function in Anaconda Prompt, taken from [this article](https://blomadam.github.io/tutorials/2017/04/09/ipynb-to-Jekyll-Post-tools.html)


### Preliminaries


```python
# Load regex package
import re
```

### Create some text


```python
# Create a variable containing a text string
text =  'My email is Steve@Gmail.com, thanks! No, I am at Anthony@Hopkins.net'
```

### Apply regex


```python
# Find all email addresses
re.findall(r'[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9]+', text)

# Explanation:
# This regex has three parts
# [a-zA-Z0-9_.+-]+ Matches a word (the username) of any length
# @[a-zA-Z0-9-]+  Matches a word (the domain name) of any length
# \.[a-zA-Z0-9-.]+ Matches a word (the TLD) of any length
```




    ['Steve@Gmail.com', 'Anthony@Hopkins.net']


