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

#PEN - Countdown timer (players and items separately to avoid double counting)
execute as @a[scores={pen_timer=1..}] run scoreboard players remove @s pen_timer 1
execute as @e[type=item, predicate=copperman:is_pen, scores={pen_timer=1..}] run scoreboard players remove @s pen_timer 1
