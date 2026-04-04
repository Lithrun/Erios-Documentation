---
title: Variables
categories: [docs]
order: 1
---

Variables store data, and they can be of a different type. These types include primitives (string, bool, number, nil) and tables such as Vector3, Vector2 and any custom tables that you define.

We can modify the initial Hello World by using a variable

```csharp
local message = "Hello World";
Notification.Info(message)
```

In this case, the `message` is a **local** variable of type `string`. This means that this variable can only be accessed within the context of this script, and that it will not be saved/loaded when the game is saved/loaded. If you want to allow other scripts to access the variable, or restore the value of your variable when the game is loaded, then you can make it a **global** variable. To make it global, simply remove the `local` keyword.

```csharp
message = "Hello World"; // Without local it is a global variable
Notification.Info(message)
```