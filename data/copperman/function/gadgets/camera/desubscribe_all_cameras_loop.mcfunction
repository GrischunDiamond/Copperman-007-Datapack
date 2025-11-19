# Remove the current camera tag
$tag @s remove camera_$(id)

# Increment and check if we need to continue
$scoreboard players set #temp_id copperman_temp $(id)
scoreboard players add #temp_id copperman_temp 1

# Continue loop up to 200 (maximum camera ID)
execute if score #temp_id copperman_temp matches ..200 store result storage copperman:temp id int 1 run scoreboard players get #temp_id copperman_temp
execute if score #temp_id copperman_temp matches ..200 run function copperman:gadgets/camera/desubscribe_all_cameras_loop with storage copperman:temp
