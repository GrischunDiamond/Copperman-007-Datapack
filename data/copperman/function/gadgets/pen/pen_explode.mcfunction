execute as @a[tag=pen_explode, limit=1] at @s run function copperman:gadgets/pen/pen_damage
execute as @a[tag=pen_explode, limit=1] run scoreboard players set @s pen_clicks 0
execute as @a[tag=pen_explode, limit=1] run clear @s iron_hoe 1
execute as @a[tag=pen_explode, limit=1] run tag @s remove pen_explode

