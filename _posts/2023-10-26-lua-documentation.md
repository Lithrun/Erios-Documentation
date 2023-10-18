---
title: "Blog post about LUA documentation feature"
date: 2023-10-26
excerpt: "It has been decided! It's time to say goodbye to Unity, and hello world to Godot!"
published: false
header:
    overlay_image: /assets/world.jpg
    overlay_filter: 0.5
    image_description: "Erios world map"
tags:
- blog
- game
---

## What I'm currently working on

Now that I've decided to switch to Godot, I've started with improving the LUA support within the game. Previously within Unity, the LUA mod support was added at a later point, but now I can re-design the whole system with mod support being a fundamental component. Previously I also used LUA intensively within the quest & state systems, and I will do so once again within Godot. As it allows these core systems of Erios to be easily customizable & extensiblle while also allowing me to easily test the LUA functionality.

I'm also improving the documentation generator for the LUA tool. Previously it could only generate a LUA bindings file, but now I'm extending it further while also allowing it to generate documentation for the website for easier reference.
![Lua Documentation](/assets/blogs/2023-10-26/next.png)