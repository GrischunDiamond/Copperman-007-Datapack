schedule function copperman:10tick 10t

# Enable all triggers for authorized players (q and agents tags)
# This is more efficient than enabling each trigger individually
scoreboard players enable @a[tag=q] add_agent
scoreboard players enable @a[tag=q] remove_agent
scoreboard players enable @a[tag=q] list_cameras
scoreboard players enable @a[tag=q] camera_on
scoreboard players enable @a[tag=q] camera_off
scoreboard players enable @a[tag=q] subscribe_camera
scoreboard players enable @a[tag=q] desubscribe_camera
scoreboard players enable @a[tag=q] subscribe_all_cameras
scoreboard players enable @a[tag=q] desubscribe_all_cameras

scoreboard players enable @a[tag=agents] add_agent
scoreboard players enable @a[tag=agents] remove_agent
scoreboard players enable @a[tag=agents] list_cameras
scoreboard players enable @a[tag=agents] camera_on
scoreboard players enable @a[tag=agents] camera_off
scoreboard players enable @a[tag=agents] subscribe_camera
scoreboard players enable @a[tag=agents] desubscribe_camera
scoreboard players enable @a[tag=agents] subscribe_all_cameras
scoreboard players enable @a[tag=agents] desubscribe_all_cameras

#Trigger give Agents Rights
execute as @a[scores={add_agent=1..}] at @s run tag @p[tag=!q] add agents
scoreboard players reset @a[scores={add_agent=1..}] add_agent

#Trigger remove Agents Rights
execute as @a[scores={remove_agent=1..}] at @s run tag @p[tag=!q] remove agents
scoreboard players reset @a[scores={remove_agent=1..}] remove_agent

# Trigger Camera_List
execute as @a[scores={list_cameras=1..}] at @s run function copperman:gadgets/camera/get_all_cameras
scoreboard players reset @a[scores={list_cameras=1..}] list_cameras

#Trigger camera_on
execute as @a[scores={camera_on=1..}] at @s run tag @s add camera_inspector
scoreboard players reset @a[scores={camera_on=1..}] camera_on

# Trigger Camera_off
execute as @a[scores={camera_off=1..}] at @s run tag @s remove camera_inspector
scoreboard players reset @a[scores={camera_off=1..}] camera_off

#Subscribtion
# Trigger Camera Subscribe
execute as @a[scores={subscribe_camera=1..}] at @s run function copperman:gadgets/camera/subscribe_camera
scoreboard players reset @a[scores={subscribe_camera=1..}] subscribe_camera

#Trigger Camera Desubscribe
execute as @a[scores={desubscribe_camera=1..}] at @s run function copperman:gadgets/camera/desubscribe_camera
scoreboard players reset @a[scores={desubscribe_camera=1..}] desubscribe_camera

# Trigger all Camera Subscribe
execute as @a[scores={subscribe_all_cameras=1..}] at @s run function copperman:gadgets/camera/subscribe_all_cameras
scoreboard players reset @a[scores={subscribe_all_cameras=1..}] subscribe_all_cameras

#Trigger all Camera Desubscribe
execute as @a[scores={desubscribe_all_cameras=1..}] at @s run function copperman:gadgets/camera/desubscribe_all_cameras
scoreboard players reset @a[scores={desubscribe_all_cameras=1..}] desubscribe_all_cameras
