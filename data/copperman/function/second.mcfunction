schedule function copperman:second 1s

#Zyanid
execute as @a[advancements={copperman:use_zyanid=true}] run function copperman:gadgets/zyanid/zyanid_die

#Überwachungs Kamera
execute at @e[type=block_display, tag=surveillance_camera] if entity @n[type=player, distance=..5] run tellraw @a {"text":"This Person's name around the (put here Camera Name from original Camera Observer Item) is ","color":"yellow","extra":[{"selector":"@a[sort=nearest, limit=1, distance=..5]"}]}
 
 #Place new Camera
execute as @e[type=armor_stand, name=Camera] at @s run function copperman:gadgets/camera/place_camera

execute as @e[type=block_display, tag=!camera_name_set] run function copperman:gadgets/camera/set_camera_name