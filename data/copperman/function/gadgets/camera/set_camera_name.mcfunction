# Set Name of the Custom name of the camera to the name of the setter armorstand
# Check all 8 directions around the camera for an oak sign
# Using execute unless to exit early once a sign is found

# North-West
execute at @s if block ~-1 ~ ~-1 minecraft:oak_sign run data modify entity @s CustomName set from block ~-1 ~ ~-1 front_text.messages[0]
execute at @s if block ~-1 ~ ~-1 minecraft:oak_sign run tag @s add hasCameraName

# North
execute at @s unless entity @s[tag=hasCameraName] if block ~0 ~ ~-1 minecraft:oak_sign run data modify entity @s CustomName set from block ~0 ~ ~-1 front_text.messages[0]
execute at @s unless entity @s[tag=hasCameraName] if block ~0 ~ ~-1 minecraft:oak_sign run tag @s add hasCameraName

# North-East
execute at @s unless entity @s[tag=hasCameraName] if block ~1 ~ ~-1 minecraft:oak_sign run data modify entity @s CustomName set from block ~1 ~ ~-1 front_text.messages[0]
execute at @s unless entity @s[tag=hasCameraName] if block ~1 ~ ~-1 minecraft:oak_sign run tag @s add hasCameraName

# West
execute at @s unless entity @s[tag=hasCameraName] if block ~-1 ~ ~0 minecraft:oak_sign run data modify entity @s CustomName set from block ~-1 ~ ~0 front_text.messages[0]
execute at @s unless entity @s[tag=hasCameraName] if block ~-1 ~ ~0 minecraft:oak_sign run tag @s add hasCameraName

# East
execute at @s unless entity @s[tag=hasCameraName] if block ~1 ~ ~0 minecraft:oak_sign run data modify entity @s CustomName set from block ~1 ~ ~0 front_text.messages[0]
execute at @s unless entity @s[tag=hasCameraName] if block ~1 ~ ~0 minecraft:oak_sign run tag @s add hasCameraName

# South-West
execute at @s unless entity @s[tag=hasCameraName] if block ~-1 ~ ~1 minecraft:oak_sign run data modify entity @s CustomName set from block ~-1 ~ ~1 front_text.messages[0]
execute at @s unless entity @s[tag=hasCameraName] if block ~-1 ~ ~1 minecraft:oak_sign run tag @s add hasCameraName

# South
execute at @s unless entity @s[tag=hasCameraName] if block ~0 ~ ~1 minecraft:oak_sign run data modify entity @s CustomName set from block ~0 ~ ~1 front_text.messages[0]
execute at @s unless entity @s[tag=hasCameraName] if block ~0 ~ ~1 minecraft:oak_sign run tag @s add hasCameraName

# South-East
execute at @s unless entity @s[tag=hasCameraName] if block ~1 ~ ~1 minecraft:oak_sign run data modify entity @s CustomName set from block ~1 ~ ~1 front_text.messages[0]
execute at @s unless entity @s[tag=hasCameraName] if block ~1 ~ ~1 minecraft:oak_sign run tag @s add hasCameraName
