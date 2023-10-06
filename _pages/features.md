---
permalink: /features/
title: "Features and Roadmap"
excerpt: "An adventure isn't about the destination, it's about the journey you took."
toc: true
toc_sticky: true
header:
    overlay_image: /assets/Helmanar concept art.png
    overlay_filter: 0.5
    image_description: "Roadmap of Erios"
    caption: "Concept art of Helmanar, a province where the demo will take place"
---

# Features

![Hergen](/assets/background2.png)

Erios is a low-poly 3D game developed in the Godot 4.X (latest) game engine. A simplistic yet beautiful ageless art style, which also boosts the performance significantly!

## Region: Weldanar

![Weldanar](/assets/background.png)
> *Weldanar, one of the major regions of the Kingdom of the Silver Forge, was isolated from the kingdom after the Great War. Protected from the horrors of the east thanks to the massive Grey Wall its lands have remained peaceful. Yet seperation from the kingdom has led the region to fall into decay. The Lord of Weldanar is no longer in control over the lands of Weldanar, and lesser lords are seeking their oppertunity. The Silver Forge has been trying to create a secure passage to Weldanar through Hagsponar for years, yet they failed with great casualties. Tensions are only rising further now that supply ships from the Azure Company have started to vanish. The peaceful era is coming to an end.*

Erios takes place in Weldanar, an isolated region of the Kingdom of the Silver Forge. Explore the region that has fallen into decay, and help the desparate people of Weldanar, or take advantage over them for your own gain.

*Note: The demo will take place within Hergen, a settlement within a province of Weldanar known as 'Helmanar'*

- Adventure
- NPC
- Events
- Interactables

## Noticable factions

In Weldanar there are several factions present, here's a few noticable ones:

- Knights of Helm
- Grey Garrison

## Progression

- Skills
- Tools

## Quests

- No HUD assistance

## Multiplayer

- Co-op
- Dungeons
- Gamemodes

## Mods

Erios has mod support! Mod developers are able to add new content to the game, like quests, items, AI overriding logic and much more! Documentation on you can create mods will be available once the demo is nearing completion.

### LUA ❤️

Erios features a detailed LUA API which is also used internally for AI behavior and quests!

> Example of an triggering a ragdoll whenever a NPC which supports ragdolls walks over trademarked small colored bricks

```lua
Events.Server.OnScriptLoaded(function (testArg)
    print 'Dynamic component loaded'
    root.AddComponent(typeof('BoxCollider'))
    root.OnTriggerEnter(onBrickCollided)
end)

function onBrickCollided(collider)
    local ragdollController = collider.get_gameObject().GetComponentInChildren(typeof('RagdollController'))
    if ragdollController != nill then
        ragdollController.Enable()
    end
end
```

Erios also generates a LUA bindings file, making the life of mod developers a lot easier thanks to the syntax highlighting of the Erios LUA API.

![Syntax highlighting](/assets/features/lua_syntax_highlighting.png)

# Roadmap

> *There's no dates mentioned within these roadmap milestones at the current moment. Simply due to the fact that I can only work on Erios during my free time. I do still regularly post updates, so keep an eye out to the news and community pages!*

## Demo

The current milestone of the game is a vertical slice demo. Which means that it will feature all major gameplay mechanics & systems, but that they are only applied on a small scale, like a single region. This region is called "Hergen", which is the area in Weldanar where the player will start their journey. This demo will also include all features mentioned below at the [features](#features).

The goal of the demo is to be able to give players a good impression about what an actual release will look like, while also allowing me to estimate how much time I require to create a full release for the game.

## Funding

At this point, the demo has been completed. I plan to start a kickstarter which will reserve as a way to acquire funds, which allows me to be able to work full-time on Erios. Because of the demo, I can now also do a realistic estimate on when a potential release date can be, and also on how much money I require to realize the release. As a solo indie developer I will not have to pay any employees, yet I would still like to hire some artists to create music and art for the game. The demo will also be included within the kickstarter, so before people will invest their money into the game, they will have a chance to try it out and see if this is what they actually want to invest their money in.

## Road towards release

Here it's difficult to say how things will exactly go, as it will depend a lot on how well the kickstarter went. If the kickstarter would succeed, then it means that I can work full-time on the project and have the required funds to realize the release of the game. A dream coming true. If the kickstarter would fail, then development on Erios will still continue, but the time I can dedeicate towards the project will be limited due to the fact that I'd still need a full-time job in order to afford the bills.

## Release & future updates

The game has been released here. Now that's a milestone on itself! I actually was able to release Erios after a very long time! Now what comes next will be updates to the game, to extend further on it. New quests, new regions, new NPCs, new mechanics, new multiplayer gamemodes, new dungeons, more tools for mod developers; the possibilities are endless. I do want to release all of these updates for free as a thank you for the community, and if the game does financially well, I can keep updating the game forever! Erios is a massive fantasy world, so there's a lot of new lands to explore in the game. Weldanar is just the start, let's see how many more regions we can add!