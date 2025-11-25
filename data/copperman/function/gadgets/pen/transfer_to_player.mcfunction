# Transfer pen_clicks and pen_timer from item to player
execute as @a[distance=..1.5, limit=1, sort=nearest] run scoreboard players operation @s pen_clicks += @e[type=item, predicate=copperman:is_pen, limit=1, sort=nearest] pen_clicks
execute as @a[distance=..1.5, limit=1, sort=nearest] run scoreboard players operation @s pen_timer = @e[type=item, predicate=copperman:is_pen, limit=1, sort=nearest] pen_timer

# Transfer explosion tag
execute if entity @s[tag=pen_explode] run tag @a[distance=..1.5, limit=1, sort=nearest] add pen_explode

# Reset item values
scoreboard players reset @s pen_clicks
scoreboard players reset @s pen_timer
tag @s remove pen_explode