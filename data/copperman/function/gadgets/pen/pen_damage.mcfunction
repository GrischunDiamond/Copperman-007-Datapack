particle minecraft:explosion_emitter ~ ~ ~ 0.2 0.2 0.2 1 5
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 0.8
scoreboard players set @s pen_clicks 0
execute at @s as @e[distance=..2] run damage @s 20
execute at @s as @e[distance=..3] run damage @s 15
execute at @s as @e[distance=..4] run damage @s 10