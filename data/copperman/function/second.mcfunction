schedule function copperman:second 1s

#Zyanid
execute as @a[advancements={copperman:use_zyanid=true}] run function copperman:gadgets/zyanid/zyanid_die

#Überwachungs Kamera
execute as @e[type=block_display, tag=surveillance_camera] at @s if entity @n[type=player, distance=..5] run tellraw @a[tag=camera_inspector] ["",{text:"The Person: ",bold:true,color:"dark_aqua"},{selector:"@a[sort=nearest, limit=1, distance=..5]",bold:true,color:"aqua"},{text:" was detected at the Camera Location: ",bold:true,color:"dark_aqua"},{nbt:"CustomName",entity:"@s",bold:true,color:"aqua"}] 
 #Place new Camera
execute as @e[type=armor_stand, name=Camera] at @s run function copperman:gadgets/camera/place_camera

execute as @e[type=block_display, tag=surveillance_camera] run function copperman:gadgets/camera/set_camera_name

#Remove Camera
execute as @e[type=block_display, tag=surveillance_camera] run function copperman:gadgets/camera/remove_camera