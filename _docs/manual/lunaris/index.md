---
title: Lunaris
categories: [docs]
permalink: /docs/manual/lunaris
---
**Lunaris** is the scripting language used for mods in Erios. It is based on **Lua**, but it adds modern programming features and a more familiar C-style syntax.

You can create mods without Lunaris, but learning it gives you much more control and freedom. With Lunaris there will be no more limit to your creativity!

## Your First Lunaris Script

Every mod can have a `Main.luna` file. This file is executed by Erios when the mod is loaded. A common use for the `Main.luna` is:
- Setting up your mod
- Subscribing to events
- Preparing data
- Loading other scripts

For example:
```csharp
// Show a notification when the mod is loaded
Notification.Info('Hello World')
```
The famous `Hello World` is the first thing people write when trying out a programming language, and it is a good way to confirm that your mod loaded succesfully.

## Understanding Scopes
Lunaris scripts run inside a **scope**. A scope determines two important things:
- What object `self` refers to
- Which callback methods are available
*`Main.luna` does __not__ have a `self`, as it isn't running on any object*

## What's next?

Below is the full Lunaris manual, organized by topic:
{% assign self = page.url %}
{% assign notes = site.docs | where_exp: "page", "page.url contains self" | where_exp: "page", "page.url != self" | sort: 'order' %}
<ul>
    {% for note in notes %}
        <li><a href="{{ note.url | relative_url }}">{{ note.title }}</a></li>
    {% endfor %}
</ul>

## Elements
The second scope category are **elements**. Within Erios, anything that is exists in the game world, either as 2D or 3D is considered an element. You see a Tree in-game? That is actually an **ElementObject**. That has a reference ID to the model, and transform data (position, rotation & scale). Many of the interactable objects you see in Erios are Elements with Lunaris scripts.

```csharp
// If you interact with a tree, you will see a Hello World notification
function OnInteract() {
    Notification.Info('Hello World')
}
```

Depending on the type of the element, there are certain **reserved** functions. These are used by Erios to invoke logic. So in this example, the `OnInteract` is invoked when the player/npc wants to interact with an object.




Within this section, you will get introduced to the Lunaris programming language:
