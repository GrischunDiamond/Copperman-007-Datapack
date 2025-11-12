execute as @a[tag=pen_explode, limit=1] run say Pen BOOM
execute as @a[tag=pen_explode, limit=1] run scoreboard players set @s pen_clicks 0
execute as @a[tag=pen_explode, limit=1] run clear @s iron_hoe 1
execute as @a[tag=pen_explode, limit=1] run tag @s remove pen_explode

