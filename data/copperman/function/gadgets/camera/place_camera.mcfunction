
#Place Camera facing as the armorstand (sorted to exit early)
execute as @e[type=armor_stand, limit=1, sort=nearest, y_rotation=-45..45] at @s run setblock ~ ~ ~ minecraft:observer[facing=north]
execute as @e[type=armor_stand, limit=1, sort=nearest, y_rotation=45..135] at @s unless block ~ ~ ~ minecraft:observer run setblock ~ ~ ~ minecraft:observer[facing=east]
execute as @e[type=armor_stand, limit=1, sort=nearest, y_rotation=-135..-45] at @s unless block ~ ~ ~ minecraft:observer run setblock ~ ~ ~ minecraft:observer[facing=west]
execute as @e[type=armor_stand, limit=1, sort=nearest, y_rotation=-180..-135] at @s unless block ~ ~ ~ minecraft:observer run setblock ~ ~ ~ minecraft:observer[facing=south]
execute as @e[type=armor_stand, limit=1, sort=nearest, y_rotation=135..180] at @s unless block ~ ~ ~ minecraft:observer run setblock ~ ~ ~ minecraft:observer[facing=south]

#Create Camera Block Display
say Summon Camera!
summon block_display ~ ~ ~ {Tags:["surveillance_camera"],CustomName:"surveillance_camera"}

kill @s