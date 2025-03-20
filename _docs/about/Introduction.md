---
title: Documentation
categories: [docs]
toc: true
sidebar:
    nav: api
---

```
Game.OnStart(function()
    console.log('Hello World')
end)
```

Welcome to the official documentation page of Erios. This page gives a broad overview of Erios its custom User Content and of this documentation, so that you know where to start on developing your first mod or where to look if you need information on a specific feature.

## Before you start
*Links to tutorials made by the community and links to community pages*

## Organization of the documentation
This documentation is organized into several categories:
- **About** contains this introduction as well as information about the game, its features and frequently asked questions.
- **Getting Started** contains all information on developing your very first Erios mod. **This is the best place to start if you're new!**
- **Manual** can be read or referenced as needed, in any order. It contains feature-specific tutorials and documentation.
- **Contributing** gives information on how you can contribute to the modding community of Erios. Whether it is by testing the limits of modding, helping to maintain this documentation or other parts.
- **Community** is dedicated to the life of Erios's modding community and contains a list of recommended third-party tutorials and materials outside of this documentation.
- **Class Reference** documents the full Erios API. This is also available in the integrated Mod Editor within the game. You can find information on all classes, functions, events and so on here.

*Have fun reading and creating mods within Erios! I am looking forward to try out your creations!*
## List of Notes in the Same Folder

To get a sorted list of all notes within the same folder using Jekyll, you can use the following Liquid code snippet:

{% assign notes = site.pages | where_exp: "page", "page.path contains '/docs/about/'" | sort: 'title' %}
<ul>
    {% for note in notes %}
        <li><a href="{{ note.url }}">{{ note.title }}</a></li>
    {% endfor %}
</ul>
