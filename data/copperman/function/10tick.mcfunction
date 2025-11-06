schedule function copperman:10tick 10t

#Trigger give Agents Rights



#Trigger remove Agents Rights


#Trigger camera_on
execute as @a[scores={camera_on=1..}] at @s run tag @s add camera_inspector
scoreboard players reset @a camera_on
scoreboard players enable @a[tag=agents,tag=q] camera_on

# Trigger Camera_off
execute as @a[scores={camera_off=1..}] at @s run tag @s remove camera_inspector
scoreboard players reset @a camera_off
scoreboard players enable @a[tag=agents,tag=q] camera_off


#Trigger Camera_admin_only

#Trigger Camera_delete_admin_only
