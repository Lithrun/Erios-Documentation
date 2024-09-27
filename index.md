---
layout: splash
permalink: /
hidden: true
header:
  overlay_color: "#5e616c"
  overlay_image: /assets/background2.png
  text_color: grey
  actions:
    - label: "<i class='fas fa-users'></i> Forums"
      button: "btn--primary"
      url: "https://forum.erios.io/signup"
    - label: "<i class='fas fa-newspaper'></i> Latest news"
      url: "/latest/"
excerpt: >
  Erios® is an upcoming action adventure RPG. Venture into the lands of Weldanar and uncover your own story. Stay up to date as development has started on a demo!<br />
feature_row:
  - image_path: /assets/features_banner.png
    alt: "features"
    excerpt: "Exploration, Quests, Interact with the world, Skills and Multiplayer. Discover all of the scheduled features for Erios!"
    url: "/features/"
    btn_class: "btn--primary"
    btn_label: "See more"
  - image_path: /assets/faq_banner.png
    alt: "frequently asked questions"
    excerpt: "You have a question? Hopefully it will be answered here! If it is not, just ask within our [community](join) channels!"
    url: "/faq/"
    btn_class: "btn--primary"
    btn_label: "See more"    
  - image_path: /assets/lore_banner.png
    alt: "lore"
    excerpt: "The lore behind Erios has been written about since 2015. Discover the rich and detailed world of Erios."
    url: "/lore/"
    btn_class: "btn--primary"
    btn_label: "See more"
  # TODO: MOD / API documentation pages
  # - image_path: /assets/mods_banner.png
  #   alt: "mods"
  #   excerpt: "Join our discord"
  #   url: "/lore/"
  #   btn_class: "btn--primary"
  #   btn_label: "Learn more"
---

<div>
  <h2 class="page__related-title">News</h2>
  <div class="grid__wrapper">
    {% for post in site.posts limit:4 %}
      {% include archive-single.html type="grid" %}
    {% endfor %}
  </div>
</div>

{% include feature_row %}

<!-- Simple script to change /latest/ to the actual first blog post -->
{% assign latest = site.posts.first %}
<script>
  var els = document.querySelectorAll("a[href='/latest/']");
  for (var i = 0, l = els.length; i < l; i++) {
    var el = els[i];
    el.href = {{ latest.url }};
  }
</script>
