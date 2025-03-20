---
title: All References
categories: [docs]
permalink: /docs/api/
toc: true
---
# Static
{% assign notes = site.docs | where_exp: "page", "page.url contains '/docs/api/static/'" | sort: 'order' %}
<ul>
    {% for note in notes %}
        <li><a href="{{ note.url | relative_url }}">{{ note.title }}</a></li>
    {% endfor %}
</ul>

# Class
{% assign notes = site.docs | where_exp: "page", "page.url contains '/docs/api/class/'" | sort: 'order' %}
<ul>
    {% for note in notes %}
        <li><a href="{{ note.url | relative_url }}">{{ note.title }}</a></li>
    {% endfor %}
</ul>

# Enum
{% assign notes = site.docs | where_exp: "page", "page.url contains '/docs/api/enum/'" | sort: 'order' %}
<ul>
    {% for note in notes %}
        <li><a href="{{ note.url | relative_url }}">{{ note.title }}</a></li>
    {% endfor %}
</ul>