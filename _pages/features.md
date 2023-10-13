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
> *Weldanar, one of the major regions of the Kingdom of the Silver Forge, was isolated from the kingdom after the Great War. Protected from the horrors of the east thanks to the massive Grey Wall its lands have remained peaceful. Yet separation from the kingdom has led the region to fall into decay. The Lord of Weldanar is no longer in control over the lands of Weldanar, and lesser lords are seeking their opportunity. The Silver Forge has been trying to create a secure passage to Weldanar through Hagsponar for years, yet they failed with great casualties. Tensions are only rising further now that supply ships from the Azure Company have started to vanish. The peaceful era is coming to an end.*

Erios takes place in Weldanar, an isolated region of the Kingdom of the Silver Forge. Explore the region that has fallen into decay, and help the desperate people of Weldanar, or take advantage over them for your own gain.

*Note: The demo will take place within Hergen, a settlement within a province of Weldanar known as 'Helmanar'*

## Discover

Adventure is a major part of Erios. Wander into a new town and meet new NPCs which each have their own schedules and tasks based on a daily routine. Do note however that their activities can depend based on randomized world events, quests or the actions of the player. Additionally Erios features an "Interactables system" which allows players to interact with various items of the world. See something, then you should be able to interact with it.

Quests can be obtained from NPCs, yet be warned, there are no quest markers or map indications. Take notes within your quest log and use your knowledge of the world to find where to go next. Fear not however, as you can talk with NPCs for further assistance.

## Progress

![Blacksmithing](/assets/features/professions.png)
Unlike traditional RPGs, Erios there's not a level for the player. Instead you become stronger by improving your skills, equipment or tools. There are 3 main skills, which each have various sub categories.

### Weapons & Tools
Each weapon & tool can be leveled by upgrading it with resources or simply by using it. That wooden starter sword you usually get? Upgrade it all the way for it to become a powerful weapon.

### Professions
There are various professions where you can create new weapons, items, tools or harvest resources. These are implemented in a way so that each profession will feel unique and engaging. Think about mining, farming, forestry, blacksmithing and so forth. Professions have a so called "active" and "passive" way to use them. For instance, if you want to convert ores into ingots, you can either actively play a minigame which will decrease the time it takes, or you can simply passively wait.

### Explorer
A special skill which awards players for exploring the world. Whether it's by exploring new areas, finding treasure, solving puzzles, there are multiple ways to improve it. The rewards from this skill will be able to aid players further into their exploration efforts (more detailed maps, explorer related tools)

## Immerse

![Two players holding torches](/assets/features/tools.png)
Within Erios there are tools and items. Tools are items which can actively be used by the player, whereas items are unusable. What a tool does, depends. Whether it's a torch to explore dark caverns, or a grappling hook to safely scale down a cliff; they come in a variety.

## Multiplayer

An epic action adventure RPG that you can play, what's more one could want? Well, being able to play it with your friends! 

### Co-op
Within co-op, you can play the campaign together with multiple players. So you will simply load your save file, host a server and then multiple players can join and together you can adventure into Erios. Whether it are quests, finding new treasures or fighting enemies, co-op mode should support everything that's also possible in the singleplayer campaign.

Players which are joining a co-op session will join with their own save files, so they can use all of their items and tools that they have acquired already.

### Dungeons
Within Erios there are dangerous locations which would be foolish to clear alone. With the Dungeons feature players will group up together and delve into a dungeon together for rewards. These dungeons can be found during the campaign, and at their respective location the player can either host or join an existing dungeon session. Players who are joining will use their save file, so similar to co-op they can use all of their fancy equipment. Dungeons don't always take place in the present, as with some dungeons players can witness events from the past. (As why read about an event if you can witness it yourself)

Upon completing a dungeon, players will obtain a treasure map. They can then obtain their rewards in the overworld of Erios after finding the treasure.

### Gamemodes
With gamemodes, players will engage in various different activities. Unlike the Co-op or Dungeons multiplayer modes, the player their save file is not used re-used here, so it's more standalone and independent. What they will exactly do really depends on the gamemode. One example of a gamemode is the "Arena" gamemode, which is Player versus Player oriented. In this gamemode, 8 random players will be placed in an arena, they will select their loadout and will have to fight to the death! Last man standing wins.

Gamemodes are also configurable, so the host can change some of the rules. For instance, a setting within the Arena gamemode is that "Team Mode" can be enabled. So instead of a free-for-all, it will be a 4 vs 4. The host can also determine which Loadouts are allowed to be selected, so there could be a round of Arena where the only weapon you are allowed to use would be a bow.

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
    if ragdollController != nil then
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

Here it's difficult to say how things will exactly go, as it will depend a lot on how well the kickstarter went. If the kickstarter would succeed, then it means that I can work full-time on the project and have the required funds to realize the release of the game. A dream coming true. If the kickstarter would fail, then development on Erios will still continue, but the time I can dedicate towards the project will be limited due to the fact that I'd still need a full-time job in order to afford the bills.

## Release & future updates

The game has been released here. Now that's a milestone on itself! I actually was able to release Erios after a very long time! Now what comes next will be updates to the game, to extend further on it. New quests, new regions, new NPCs, new mechanics, new multiplayer gamemodes, new dungeons, more tools for mod developers; the possibilities are endless. I do want to release all of these updates for free as a thank you for the community, and if the game does financially well, I can keep updating the game forever! Erios is a massive fantasy world, so there's a lot of new lands to explore in the game. Weldanar is just the start, let's see how many more regions we can add!