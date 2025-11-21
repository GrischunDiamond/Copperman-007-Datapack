# Transfer pen_clicks from the pen item to the nearest player
execute as @a[distance=..1.5, limit=1, sort=nearest] run scoreboard players operation @s pen_clicks += @e[type=item, predicate=copperman:is_pen, limit=1, sort=nearest] pen_clicks

# Transfer explosion tag if needed
execute if entity @s[tag=pen_explode] run tag @a[distance=..1.5, limit=1, sort=nearest] add pen_explode

# Reset the pen item's values
scoreboard players reset @s pen_clicks
tag @s remove pen_explode