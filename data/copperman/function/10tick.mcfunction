schedule function copperman:10tick 10t

#Trigger give Agents Rights
execute as @a[scores={add_agent=1..}] at @s run tag @p[tag=!q] add agents
scoreboard players reset @a add_agent
scoreboard players enable @a[tag=q] add_agent
scoreboard players enable @a[tag=agents] add_agent

#Trigger remove Agents Rights
execute as @a[scores={remove_agent=1..}] at @s run tag @p[tag=!q] remove agents
scoreboard players reset @a remove_agent
scoreboard players enable @a[tag=q] remove_agent
scoreboard players enable @a[tag=agents] remove_agent

# Trigger Camera_List
execute as @a[scores={list_cameras=1..}] at @s run function copperman:gadgets/camera/get_all_cameras
scoreboard players reset @a list_cameras
scoreboard players enable @a[tag=q] list_cameras
scoreboard players enable @a[tag=agents] list_cameras

#Trigger camera_on
execute as @a[scores={camera_on=1..}] at @s run tag @s add camera_inspector
scoreboard players reset @a camera_on
scoreboard players enable @a[tag=q] camera_on
scoreboard players enable @a[tag=agents] camera_on

# Trigger Camera_off
execute as @a[scores={camera_off=1..}] at @s run tag @s remove camera_inspector
scoreboard players reset @a camera_off
scoreboard players enable @a[tag=q] camera_off
scoreboard players enable @a[tag=agents] camera_off


#Trigger Camera_admin_only

#Trigger Camera_delete_admin_only
