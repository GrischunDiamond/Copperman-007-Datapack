schedule function copperman:second 1s

#Zyanid
execute as @a[advancements={copperman:use_zyanid=true}] run function copperman:gadgets/zyanid/zyanid_die

#Überwachungs Kamera
#Place new Camera
execute as @e[predicate=copperman:is_camera] at @s run function copperman:gadgets/camera/place_camera
execute as @e[type=block_display, tag=surveillance_camera,tag=!hasCameraId] run function copperman:gadgets/camera/set_camera_id

#You can rename the camera multiple times
execute as @e[type=block_display, tag=surveillance_camera] run function copperman:gadgets/camera/set_camera_name

#Remove Camera
execute as @e[type=block_display, tag=surveillance_camera] run function copperman:gadgets/camera/remove_camera