---
title: Level Editor
date: 2023-11-14
excerpt: "Erios now has a Level Editor! Allowing players to create custom levels!"
published: true
header:
    teaser: /assets/blogs/2023-11-14-level-editor/teaser.png
    overlay_image: /assets/blogs/2023-11-14-level-editor/teaser.png
    overlay_filter: 0.5
    image_description: "Level Editor"
tags:
- blog
- game
---

Moddability of Erios is a core feature of the game. I personally find it very important that players should be able to extend upon the game, hence why in these early days of porting everything to Godot I'm heavily focussing on improving mod support for the game. So that on a fundamental level it can be extended by mods. So another example of this philosophy will be the Level editor.

## Level Editor

The Erios Level Editor allows players to create new levels, or to modify existing levels. Users can select objects, change their position, rotation or scale with the manip tool. Additionally there's an object selection browser, and an overview of all objects within the current level.

![Level Editor](/assets/blogs/2023-11-14-level-editor/teaser.png)

## LevelScript

A level script is the JSON which the Level editor uses to modify existing levels or to spawn new objects. It looks like the following:

```json
{
	"id": "L00-0001",
	"objects": [
		{
            // Model ID
			"model": "P00-0003",
			"position": "-10, 1, 5",
            "scale": "2, 1, 1",
            "rotation": "90, 0, 0",
            // Dynamic recoloring configuration
			"recoloring": [
				{
					"index": 0,
					"color": "75 75 75"
				}
			]
		},
	]
}
```

An object can be created or modified, together with its metadata like the position, scale, rotation or specific components like its coloring. Simple, yet lots of customization is possible.

## Erios Unique IDentifiers (EUID)

As seen within the LevelScript, the IDs have a very specific syntax. These are EUIDs, or Erios Unique Identifiers.

Within the Unity iteration there were so called "EUID", which were a custom version of a GUID which looked like this `6d49dfaa-d0ca-4be1-aff6-6354c68b8b9` or `c:mod:6d49dfaa-d0ca-4be1-aff6-6354c68b8b9`. Although these do guarantee uniqueness, they are not that developer friendly. For instance if each model uses an unique identifier which the level editor needs to refer to, it becomes quite difficult to figure out what model a specific EUID is. Thus, I've reworked the EUIDs.

An EUID will now look like this: `P00-0001` or `L00-0001`. The syntax of an EUID is the following:
- Mod Prefix (3 digit + ':', optional (i.e. `LIT:P00-0001` as each mod has their own unique 3 digit ID prefix))
- Prefix type (1 digit, see table below)
- Sub category (0-9 or A-Z) (2 digit)
- Unique Number (0000) (4 digit)

**Prefix letter table**

| Prefix | Meaning |
| --- | --- |
| E | Entity (NPC, Animal, Creature, basically just living things) |
| O | Object (object instance ID) |
| P | Prefab |
| L | Level |
| M | Model |
| A | Animation |
| Q | Quest |
| I | Item |
| U | UI |

Now these EUIDs are unique, and more developer friendly to work with.

## Instance IDs

Each model in Erios has a unique EUID. I've added a simple "ObjectReferences" script, which will create a dictionary of all models within the game.

![Object references dictionary](/assets/blogs/2023-11-14-level-editor/objectreferences.png)

Each object has a reference to the Model ID, yet it also has a so called Instance ID. The instance ID is unique per level. So two instances of the same model will have the same Model ID, yet a different Instance ID. This allows me to or mod developers to find a specific object.

![Instance ID](/assets/blogs/2023-11-14-level-editor/instanceid.png)

## Message from the developer

Thank you for reading this blog once again! Originally I didn't plan on adding a level editor to Erios, but while I'm still trying to learn more about Godot, this was a very fun and challenging test, which I've successfully passed now. This weekend I will be going on vacation to Kyoto, so there's won't be any updates this weekend. No worries, as next week I will be back again! The discord feels quite empty at times, so feel free to leave a message there. I will see you all next blog o/

\- Lithrun