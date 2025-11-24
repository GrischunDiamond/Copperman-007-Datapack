particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 3 5
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 0.8
scoreboard players set @s pen_clicks 0
execute as @e[distance=..2, type=!item_frame, type=!armor_stand, type=!minecart, type=!painting, type=!item, type=!glow_item_frame, type=!leash_knot] run damage @s 20
execute as @e[distance=3..5] run damage @s 10