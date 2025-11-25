# Explode for players
execute as @a[tag=pen_explode] at @s run function copperman:gadgets/pen/pen_damage
execute as @a[tag=pen_explode] run scoreboard players set @s pen_clicks 0
execute as @a[tag=pen_explode] run scoreboard players reset @s pen_timer
execute as @a[tag=pen_explode] run clear @s iron_hoe 1
execute as @a[tag=pen_explode] run tag @s remove pen_explode

# Explode for items
execute as @e[type=item, predicate=copperman:is_pen, tag=pen_explode] at @s run function copperman:gadgets/pen/pen_damage
execute as @e[type=item, predicate=copperman:is_pen, tag=pen_explode] run kill @s



