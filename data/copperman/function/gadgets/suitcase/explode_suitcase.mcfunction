
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 5 12
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 0.6
execute as @a[distance=..2] run damage @s 20
execute as @a[distance=3..5] run damage @s 10



