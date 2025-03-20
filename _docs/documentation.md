---
permalink: /docs/
title: "Documentation"
excerpt: "Become an Erios expert!"
related: false
toc: true
---

Welcome to the official documentation of **Erios**, the action RPG game that fully immerses you within the world of Erios! If you are new to this documentation, then I would recommend you to read the [introduction page]({}) to get an overview of what this documentation has to offer.

At the table of contents in the sidebar you can easily access the documentation of your topic of interest. You can also use the search function in the top-left corner.

## Contribute

This documentation is open-source and maintained by Lithrun (the developer) and my amazing community of contributors. Things might not be perfect or clear enough, and we need your help to improve! If you don't understand something, or cannot find what you are looking for in the docs, then help us make the documentation better by letting us know!

Submit an issue or pull request to the [Github repository](https://github.com/Lithrun/Erios-Documentation/issues). Thank you!

<a id="togglemenu" onclick="document.body.classList.toggle('menuopen');">Menu<span><span></span><span></span><span></span></span></a>

<style>
@keyframes span1 {
    0%   { top: 0%; transform-origin: 50% 50%;}
    50%  { top: 50%; transform: rotate(0deg) translateY(-50%);}
    100% { top: 50%; transform: rotate(45deg) translateY(-50%);}
}
@keyframes span2 {
    0%   {opacity: 1;}
    45%  {opacity: 1;}
    65%  {opacity: 0;}
    100% {opacity: 0;}
}
@keyframes span3 {
    0%   { bottom: 0%; transform-origin: 50% 50%;}
    45%  { bottom: 50%; transform: rotate(0deg) translateY(50%);}
    100% { bottom: 50%; transform: rotate(-45deg) translateY(50%);}
}

#togglemenu {display: none;}
@media only screen and (max-width: 55rem) {
    #menu {display: none;}
    .menuopen #menu {display: block;}
    #togglemenu {display: block; cursor: pointer;}
    
}
#togglemenu > span {display: inline-block; margin-left: 0.4rem; width: 1.1rem; height: 0.75rem; position: relative; vertical-align: middle; position: relative; bottom: 1px;}
#togglemenu > span > span {display: block; position: absolute; width: 100%; height: 2px; background: #999;}
#togglemenu > span > span:nth-child(1) {top: 0; transform-origin: 50% 0%;}
#togglemenu > span > span:nth-child(2) {top: 50%; margin-top: -1px;}
#togglemenu > span > span:nth-child(3) {bottom: 0; transform-origin: 50% 100%;}

.menuopen #togglemenu > span > span:nth-child(1) {
    animation: span1 0.25s;
    animation-iteration-count: 1;
    animation-fill-mode: forwards;
}
.menuopen #togglemenu > span > span:nth-child(2) {
    animation: span2 0.25s;
    animation-iteration-count: 1;
    animation-fill-mode: forwards;  
}
.menuopen #togglemenu > span > span:nth-child(3) {
    animation: span3 0.25s;
    animation-iteration-count: 1;
    animation-fill-mode: forwards; 
}
</style>