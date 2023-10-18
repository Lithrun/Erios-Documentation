---
title: "Goodbye Unity, Hello Godot!"
date: 2023-10-18
excerpt: "It has been decided! It's time to say goodbye to Unity, and hello world to Godot!"
published: true
header:
    teaser: /assets/blogs/2023-10-18-goodbye-unity-hello-godot/teaser.png
    overlay_image: /assets/blogs/2023-10-18-goodbye-unity-hello-godot/header.png
    overlay_filter: 0.5
    image_description: "Erios world map"
tags:
- blog
- game
---
As mentioned in the [previous blog]({% post_url 2023-10-12-hello-world %}), the current version of Erios is being developed with the Unity game engine. Due to changes in Unity's pricing schemes, I started to experiment with the Godot. Which is an open source game engine. After experimenting with it for more than a month now, I have come to the conclusion: **Erios will be moving to the Godot game engine!**

![Goodbye Unity Hello Godot](/assets/blogs/2023-10-18-goodbye-unity-hello-godot/teaser.png)

## Current Project State

For a month I have focussed on learning Godot, as whereas I've had 5 years experience with Unity, my knowledge with Godot was zero. Yet my experience gained from Unity is not wasted, as regardless of the game engine, it still follows the same core principles of game development, just with a different framework. Perhaps in easier terms, instead of writing a book in Japanese, it is now being converted into the English language.

The work I've done is all still there, I just need to convert it to become compatible with Godot. Porting is the term often used for this process. And that's what my main focus will be on for the upcoming months. To port features which were in the Unity version over to Godot.

Things like models, textures, animations and more importantly the systems I've created will all need to be ported.

## Reflecting back to Unity

Switching from Unity to Godot wasn't an easy decision to make. It was still the game engine that I've enjoyed using for many years, and I'd still like to thank the Unity developers for creating such an amazing tool. It's just unfortunate that the business executives of Unity have decided to change its course. We as developers always strive to create the best possible product, whereas the management focuses on generating more revenue. Which by all means is fair enough, it's just a true shame that it comes at the cost of the quality of a product, while also resulting in its reputation being ruined as there's basically the whole 'we can change the terms & conditions at any point we like'. Not something I can rely on for Erios.

I'd also like to reflect on the things I've been able to create for Erios with Unity over the last year. So I had developed (prototypes for) the following:
```
- Character Controls (Move, Roll, Target, Using items, attacking, camera controls etc)
- Targetting System
- Interactable System
- Quests & Events
- NPC States (Attack, Target Evaluation, Combat, Dialogue, Idle, Follow, Rotation, Travel)
- Data objects
- Ragdolls
- Interiors system
- Dialogue System
- Professions (Farming, Blacksmithing)
- Items, Weapons & Tools
- Time System (Day/Night cycle)
- Customization (Rebinds, system settings, changing UI colors)
- Persistence (Loading & Saving the game state)
- Multiplayer (Chat, Lobby, Lobby API, Syncing game state upon joing)
- Gamemode: Arena (Multiplayer PvP with optional bots, or only bots if offline)
- Dynamic UV recoloring (basically allows me to recolor objects while the game is running)
- Mod Support
```

A very long list with great features, and I'm sure that after re-reading this I've forgotten a few things. I won't be going into depth with all of these items for now. Once I've ported a functionality over to Godot, then I will go more into depth to explain how it exactly works.

## Thank you for reading!

A game engine is a core and fundamental part of a game, as it's the tool you use to create the whole game. Switching to Godot will be an adventure on itself, but I will make the most out of it to the benefit of Erios. Stay tuned for future updates while I am porting over my work to Godot!

\- Lithrun