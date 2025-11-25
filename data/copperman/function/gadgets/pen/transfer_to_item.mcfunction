# Transfer pen_clicks and pen_timer from player to item
scoreboard players operation @s pen_clicks = @a[distance=..5, sort=nearest, scores={pen_clicks=1..}, limit=1] pen_clicks
scoreboard players operation @s pen_timer = @a[distance=..5, sort=nearest, scores={pen_clicks=1..}, limit=1] pen_timer

# Transfer explosion tag
execute if entity @a[distance=..5, sort=nearest, tag=pen_explode, limit=1] run tag @s add pen_explode

# Reset player values
scoreboard players set @a[distance=..5, sort=nearest, scores={pen_clicks=1..}, limit=1] pen_clicks 0
scoreboard players reset @a[distance=..5, sort=nearest, limit=1] pen_timer
execute as @a[distance=..5, sort=nearest, tag=pen_explode, limit=1] run tag @s remove pen_explode

