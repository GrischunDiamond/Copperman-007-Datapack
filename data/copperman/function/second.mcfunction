schedule function copperman:second 1s

#Zyanid
execute as @a[advancements={copperman:use_zyanid=true}] run function copperman:gadgets/zyanid/zyanid_die

#Überwachungs Kamera
execute at @e[type=block_display, name="surveillance_camera"] if entity @n[type=player, distance=..5] run tellraw @a {"text":"This Person's name around the (put here Camera Name from original Camera Observer Item) is ","color":"yellow","extra":[{"selector":"@a[sort=nearest, limit=1, distance=..5]"}]}
 

