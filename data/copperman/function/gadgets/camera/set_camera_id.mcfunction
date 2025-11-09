scoreboard players operation @s camera_id = @e[type=marker,name=new_camera_id] camera_id
scoreboard players add @e[type=marker, name=new_camera_id] camera_id 1

tellraw @a ["",{text:"The new Camera has the ID: "},{score:{name:"@s",objective:"camera_id"}}]

tag @s add hasCameraId