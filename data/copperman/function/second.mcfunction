schedule function copperman:second 1s

#ZYANID
execute as @a[advancements={copperman:use_zyanid=true}] run function copperman:gadgets/zyanid/zyanid_die

#ÜBERWACHUNGS KAMERA
#Place new Camera
execute as @e[predicate=copperman:is_camera] at @s run function copperman:gadgets/camera/place_camera
execute as @e[type=block_display, tag=surveillance_camera,tag=!hasCameraId] run function copperman:gadgets/camera/set_camera_id

#You can rename the camera multiple times
execute as @e[type=block_display, tag=surveillance_camera] run function copperman:gadgets/camera/set_camera_name

#Remove Camera
execute as @e[type=block_display, tag=surveillance_camera] run function copperman:gadgets/camera/remove_camera

#PEN
#Arm - Transfer clicks from player to dropped pen
execute at @a[scores={pen_clicks=1..}] as @e[type=item, distance=..5, sort=nearest, limit=1, predicate=copperman:is_pen] at @s run function copperman:gadgets/pen/transfer_to_item

#Schedule explosion for items with 3 clicks
execute as @e[type=item,  scores={pen_clicks=3}, tag=!pen_explode] run schedule function copperman:gadgets/pen/pen_explode 4s
execute as @e[type=item, scores={pen_clicks=3}, tag=!pen_explode] run tag @s add pen_explode

#Disarm
execute as @a[tag=pen_explode, limit=1] if score @s pen_clicks matches 0 run tag @s remove pen_explode