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


# Get the lowest uneused camera_id armorstand_id (create 50 predifinied camera tags) 
# -> run function get_highest_id

# Set the searched value for this new camera_id armorstand
execute as @s store result score @s camera_id run function copperman:gadgets/camera/get_camera_id

# Now this has an new unique armorstand camera_id number

