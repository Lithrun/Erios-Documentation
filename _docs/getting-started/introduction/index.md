---
title: Introduction
permalink: /docs/getting-started/introduction
categories: [docs]
toc: true
---

This series will introduce you to modding in Erios and give you an overview of its features.

In the following pages, you will get answers to questions such as "What is Erios Modding?" or "What can I do with mods in Erios?". We will introduce the most essential concepts, run you through the Erios Mod Editor, and give you tips to make msot of your time learn it.

{% assign self = page.url %}
{% assign notes = site.docs | where_exp: "page", "page.url contains self" | where_exp: "page", "page.url != self" | sort: 'order' %}
<ul>
    {% for note in notes %}
        <li><a href="{{ note.url | relative_url }}">{{ note.title }}</a></li>
    {% endfor %}
</ul>