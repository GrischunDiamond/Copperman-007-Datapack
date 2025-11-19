# Add the current camera tag
$tag @s add camera_$(id)

# Increment and check if we need to continue
$scoreboard players set #temp_id copperman_temp $(id)
scoreboard players add #temp_id copperman_temp 1

# Get the highest camera ID
execute store result score #max_id copperman_temp run scoreboard players get @e[type=marker,name=new_camera_id,limit=1] camera_id

# Continue loop if we haven't reached the max
execute if score #temp_id copperman_temp < #max_id copperman_temp store result storage copperman:temp id int 1 run scoreboard players get #temp_id copperman_temp
execute if score #temp_id copperman_temp < #max_id copperman_temp run function copperman:gadgets/camera/subscribe_all_cameras_loop with storage copperman:temp
