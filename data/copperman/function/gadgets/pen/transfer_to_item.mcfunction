scoreboard players operation @s pen_clicks = @a[distance=..5, sort=nearest, scores={pen_clicks=1..}, limit=1] pen_clicks
scoreboard players set @a[distance=..5, sort=nearest, scores={pen_clicks=1..}, limit=1] pen_clicks 0

execute as @a[distance=..5, sort=nearest, scores={pen_clicks=3}, limit=1] at @s run tag @s remove pen_explode
execute if entity @a[distance=..5, sort=nearest, scores={pen_clicks=3}, limit=1] run tag @s add pen_explode

