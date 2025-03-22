---
title: Mod Editor
categories: [docs]
permalink: /docs/manual/mod-editor
---

Erios features a complete mod editor! This allows you to modify Levels, Scripts, Characters, Quests and much more!

The following pages will go into detail for each editor:
{% assign self = page.url %}
{% assign notes = site.docs | where_exp: "page", "page.url contains self" | where_exp: "page", "page.url != self" | sort: 'order' %}
<ul>
    {% for note in notes %}
        <li><a href="{{ note.url | relative_url }}">{{ note.title }}</a></li>
    {% endfor %}
</ul>