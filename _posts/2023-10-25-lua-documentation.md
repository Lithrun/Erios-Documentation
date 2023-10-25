---
title: LUA Documentation
date: 2023-10-25
excerpt: "Erios features mod support, the LUA documentation tool has been extended!"
published: true
header:
    teaser: /assets/blogs/2023-10-25/teaser.png
    overlay_image: /assets/blogs/2023-10-25/teaser.png
    overlay_filter: 0.5
    image_description: "Moonsharp logo"
tags:
- blog
- game
---

## What I'm currently working on

Now that I've decided to switch to Godot, I've started with improving the LUA support within the game. Erios uses [Moonsharp](https://www.moonsharp.org/) for its LUA mod support. It's an open source LUA interpreter, it's performant and also easy to extend.

Given that I am reimplementing most code due to the switch to Godot, I can now re-design the whole codebase with mod support being a fundamental component. Within both the Quest & NPC state systems I used LUA intensively, once I've re-added these systems, I will do so once more. Keeping mod support in mind allows these core systems of Erios to be easily customizable & extensible while also allowing me to easily test the LUA functionality.

From a design perspective, you can see Erios as the core. It defines what can and what cannot be done, and based on these constraints, with mods, mod developers will be able to extend further upon it. To mention a few things which can be possible thanks to modding:
- Custom levels
- Custom items, tools & weapons
- Custom quests & events
- Custom NPC behavior & states

## LUA Documentation

I'm also improving the documentation generator for the LUA tool. Previously it could only generate a LUA bindings file, but now I'm extending it further while also allowing it to generate documentation for the website for easier reference. Which is great, as whenever I make a change to the code, I can now just automatically generate all of the documentation files so everything will stay up to date.

![Lua Documentation](/assets/blogs/2023-10-25/next.png)
*Example of generated LUA documentation*

You can view a live preview here: [documentation]({% link _docs/Introduction.md %})

## What's next

I will continue with designing Erios further in regards of mod support. I also plan on reworking the metadata.json file, as these are the files that determine how a mod exactly works. Currently it looks like this:

```json
{
    "name": "The Name of your mod",
    "description" : "The description of your mod",
    "author" : "Author Name",
    "version" : "1.0",
    // Scripts which run for every player
    "clientScripts" : [
        "client.lua"
    ],
    // Scripts which are only ran on the server (host)
    "serverScripts": [
        "main.lua"
    ],
    // Allows other mods to be loaded so that functions defined in mod X can be reused in this mod
    "required" : [
        "LithrunsAwesomeMod"
    ],
    // Optional files. Textures, models, audio, animations ect.
    "resources" : []
}
```

Whereas this version of the metadata.json does cover the basics, it's not detailed enough yet to cover more complex use cases. Additionally I am also thinking about a solution to some design questions such as "If 2 mods modify the same entity (for instance a NPC), then what should happen?". As either the mod with highest priority should load it, or should both be loaded? So yeah, basically spending some more time within the game design documents.

Either way, exciting and challenging stuff. That will sum it up for this dev blog, perhaps a bit technical, but if anything is unclear or vague, just reach out to me via through the Erios community and I will gladly clarify things for you. Thank you for reading, and I will see you next time!

\- Lithrun