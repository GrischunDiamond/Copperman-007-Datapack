#Set Name of the Custom name of the camera to the name of the setter armorstand
# North-West
execute at @s if block ~-1 ~ ~-1 minecraft:oak_sign run data modify entity @s CustomName set from block ~-1 ~ ~-1 front_text.messages[0]

# North
execute at @s if block ~0 ~ ~-1 minecraft:oak_sign run data modify entity @s CustomName set from block ~0 ~ ~-1 front_text.messages[0]

# North-East
execute at @s if block ~1 ~ ~-1 minecraft:oak_sign run data modify entity @s CustomName set from block ~1 ~ ~-1 front_text.messages[0]

# West
execute at @s if block ~-1 ~ ~0 minecraft:oak_sign run data modify entity @s CustomName set from block ~-1 ~ ~0 front_text.messages[0]

# East
execute at @s if block ~1 ~ ~0 minecraft:oak_sign run data modify entity @s CustomName set from block ~1 ~ ~0 front_text.messages[0]

# South-West
execute at @s if block ~-1 ~ ~1 minecraft:oak_sign run data modify entity @s CustomName set from block ~-1 ~ ~1 front_text.messages[0]

# South
execute at @s if block ~0 ~ ~1 minecraft:oak_sign run data modify entity @s CustomName set from block ~0 ~ ~1 front_text.messages[0]

# South-East
execute at @s if block ~1 ~ ~1 minecraft:oak_sign run data modify entity @s CustomName set from block ~1 ~ ~1 front_text.messages[0]




