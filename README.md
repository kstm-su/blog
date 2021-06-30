# kstm blog

[![Build Status](https://travis-ci.org/kstm-su/blog.svg?branch=travis)](https://travis-ci.org/kstm-su/blog)

## how to post

### generate

```bash
touch docs/new-post.md
```

```yml
# docs/.vuepress/config.yml

sidebar:
  - 'new-post' # add top
  ...
```

### edit

```markdown
<!-- vim docs/new-post.md -->

---
title: 'awesome title here'
---

# Awesome page title here

content goes on...
```

### deploy

Powered by Vercel or Netlify :construction:
