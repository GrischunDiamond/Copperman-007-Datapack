schedule function copperman:gadgets/camera/camera_detection 2s

#Movement detected
execute as @e[type=block_display, tag=surveillance_camera] at @s if entity @n[type=player, distance=..5] run function copperman:gadgets/camera/send_reports