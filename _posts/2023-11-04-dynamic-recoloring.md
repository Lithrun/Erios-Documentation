---
title: Dynamic Recoloring
date: 2023-11-04
excerpt: "Erios has a dynamic recoloring tool, now it's back with Godot!"
published: true
header:
    teaser: /assets/blogs/2023-11-04-dynamic-recoloring/teaser.png
    overlay_image: /assets/blogs/2023-11-04-dynamic-recoloring/teaser.png
    overlay_filter: 0.5
    image_description: "Recolored trees"
tags:
- blog
- game
---

## Dynamic Recoloring

Dynamic recoloring is a tool which allows me to dynamically recolor models at both compile & runtime by changing the UV positions. All models use the same texture, to make things as efficient and performant as possible, while also being highly customizable. I've successfully ported this over to Godot, and could re-use most of the code I had written in the Unity version.

## How it works

In order for the dynamic recoloring to work, each model must use the same texture. Because the game is low-poly style, this is quite simple, given that each UV just has a single color. For instance, this tree only has 2 different colors: The trunk wooden color and the orange leaves color.

If we look at this tree, it uses its own unique texture. What the script does, is that it will read the color of each UV, and put that within a dictionary. It will then create groups based on each group of colors, which for this tree will mean that there are 2 groups. 1 for the trunk, and 1 for the leaves.

![Configured tree mesh](/assets/blogs/2023-11-04-dynamic-recoloring/tree.png)

Once it knows the colors at the grouped UVs, it will then try to find these colors on the main texture that each model uses within Erios, and then change the UV to match this main texture. This texture is a 512x512 texture that features 262144 unique colors. Basically every color that you need, it's on that texture. So it will update the mesh to use the orange & brown color on this main texture.

If this tree now wants to use a different color, let's say blue, then it can easily get the UV cords of this blue color and update the color of every UV point within the group. Resulting into a different color. This allows me to recolor things at run-time or compile time with high performance, while also allowing each object to be unique. It can recolor at roughly 0.2ms per object, and this can be done while the game is loading. Basically meaning that the performance impact while the game is running is 0, while also having uniquely colored objects!

![Blue tree](/assets/blogs/2023-11-04-dynamic-recoloring/showcase.png)

## The result

This tree can now be recolored! Let's look at randomized recolors for each tree:
![Random recolors](/assets/blogs/2023-11-04-dynamic-recoloring/teaser.png)

You get a color, you get a color, everyone gets a color!

Whereas with this tree it's just a simple showcase, the scope of the dynamic recoloring is everywhere within the game. From easily recoloring any weapons, to allowing mod developers to change the colors of existing map objects via LevelScripts. But LevelScripts are a topic for next blog, so I will see you there soon!

\- Lithrun