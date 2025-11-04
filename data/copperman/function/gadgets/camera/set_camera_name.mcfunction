#Set Name of the Custom name of the camera to the name of the setter armorstand
# North-West
execute at @s if block ~-1 ~ ~-1 minecraft:oak_sign run data modify entity @s CustomName set from block ~-1 ~ ~-1 front_text.messages
setblock ~-1 ~ ~-1 air

# North
execute at @s if block ~0 ~ ~-1 minecraft:oak_sign run data modify entity @s CustomName set from block ~0 ~ ~-1 front_text.messages

# North-East
execute at @s if block ~1 ~ ~-1 minecraft:oak_sign run data modify entity @s CustomName set from block ~1 ~ ~-1 front_text.messages

# West
execute at @s if block ~-1 ~ ~0 minecraft:oak_sign run data modify entity @s CustomName set from block ~-1 ~ ~0 front_text.messages

# East
execute at @s if block ~1 ~ ~0 minecraft:oak_sign run data modify entity @s CustomName set from block ~1 ~ ~0 front_text.messages

# South-West
execute at @s if block ~-1 ~ ~1 minecraft:oak_sign run data modify entity @s CustomName set from block ~-1 ~ ~1 front_text.messages

# South
execute at @s if block ~0 ~ ~1 minecraft:oak_sign run data modify entity @s CustomName set from block ~0 ~ ~1 front_text.messages

# South-East
execute at @s if block ~1 ~ ~1 minecraft:oak_sign run data modify entity @s CustomName set from block ~1 ~ ~1 front_text.messages




#entity @e[type=armor_stand,limit=1,sort=nearest] CustomName

