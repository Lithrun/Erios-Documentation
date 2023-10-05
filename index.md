---
layout: splash
permalink: /
hidden: true
header:
  overlay_color: "#5e616c"
  overlay_image: /assets/background2.png
  text_color: grey
  actions:
    - label: "<i class='fas fa-info'></i> About"
      url: "/about/"
    - label: "<i class='fas fa-newspaper'></i> Latest news"
      url: "/latest/"
excerpt: >
  Erios is an upcoming action adventure RPG. Venture into the lands of Weldanar and uncover your own story. Stay up to date as development has started on a demo!<br />
feature_row:
  - image_path: /assets/features_banner.png
    alt: "features"
    excerpt: "Discover all of the scheduled features"
    url: "/features/"
    btn_class: "btn--primary"
    btn_label: "Learn more"
  - image_path: /assets/faq_banner.png
    alt: "frequently asked questions"
    excerpt: "Check out our Frequently Asked Questions!"
    url: "/faq/"
    btn_class: "btn--primary"
    btn_label: "Learn more"    
  - image_path: /assets/lore_banner.png
    alt: "lore"
    excerpt: "Discover the lore and history of Erios."
    url: "/lore/"
    btn_class: "btn--primary"
    btn_label: "Learn more"
---

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
