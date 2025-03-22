---
title: Lunaris
categories: [docs]
permalink: /docs/manual/lunaris
---
Lunaris is the programming language, based on LUA, that is used in Erios for modding, but also for core mechanics. For instance, the in-game challenges are all written in Lunaris! Quests, characters, events, all of these also run on Lunaris. So as you have seen, a lot if possible with this language.

Within this section, you will get introduced to the Lunaris programming language

The following pages will go into detail for each editor:
{% assign self = page.url %}
{% assign notes = site.docs | where_exp: "page", "page.url contains self" | where_exp: "page", "page.url != self" | sort: 'order' %}
<ul>
    {% for note in notes %}
        <li><a href="{{ note.url | relative_url }}">{{ note.title }}</a></li>
    {% endfor %}
</ul>