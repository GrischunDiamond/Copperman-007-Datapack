# Copperman Datapack Guide

## Data
Island Test World on NextCloud
[Island Villa](https://nextcloud.grischunlab.ch/f/1792)

Copperman Ressource Pack on MC-Packs.net
[Copperman Ressource Pack](https://nextcloud.grischunlab.ch/f/1793)

## Usage
Copy the Datapack the datapacks Folder: /saves/WORLD_NAME/datapacks

--> At next World Entry from Client, Text Message should plop up
![Reload Image](images/reload.png)

When not, then enable Ressourcepack specificly:
![Enable Ressourcepack](/images/enable.png)

### Get Crafting Recipes initially
```
/recipe give @s copperman:custom/pen
/recipe give @s copperman:custom/suitcase
/recipe give @s copperman:custom/surveillance_camera
```

### Admin Tests
When your a Admin and want to test Datapack, then follow the Points bellow:

#### 1. New Tag
Give yourself the "q" Tag as like James Bond Quartermaster vom Q-Branch

```
/tag @s add q
```

> !Note if your MC Account Name is "GrischunDiamond". Then you don't have to follow allong this first Step

#### 2. Give Gadgets
Give yourself all the created Gadgets + Ammo

```
/function copperman:give_all_gadgets
```

> !For this you need OP-Rights in Minecraft


### Goldeneye Pen
Click with Mouse Right Click three times to activate Bomb Fuse Timer.
After few Seconds it detonates

> !You could also throw it away, to get distance to pen, with holding pen + pressing "q"

--> To reset this press again three times

#### Q-Scene Goldeneye
[Pen Scene](https://www.youtube.com/watch?v=15RZEbeGxTY)

#### Crafting
Get Crafting Recipe
```
/recipe give @s copperman:custom/pen
```
--> Now search for it in Crafting Table and build it manually

### Suitcase
A normal looking Shulkerbox to store all your Gadgets

But have Attention, when oppening incorrectly the Gas Granate Explodes in it

> To correctly open it with Shift + Right Click


### Guard
--- Not ready implemented ---

Only Tag with Command:
```
/function copperman:give_all_gadgets
```


### Zyanid Potion
If you drink it, you die

Currently you can only get it through Get command
```
/function copperman:give_all_gadgets
```

### Copperman Missiles
Currently only as normal colored Fireworks available.
--> But they make a lot of damage even now
To shoot it you need a normal Crossbow

You get they with Get Command
```
/function copperman:give_all_gadgets
```

### Cameras
#### Instalation
1. Rename Armor Stand to Camera
2. Place it at the camera target location(facing armorstand = facing camera)
3. Place an Oak Sign 1 Block at the side (same y level)
4. Write the camera name in the first line of the oak sign
5. Remove oak sign 

#### Usage
* Get the Tag camera_inspector for all camera messages

#### Remove
Break the Observer Block
