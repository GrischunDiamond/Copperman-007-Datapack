particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 3 5
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 0.8
kill @a[distance=..2]
damage @a[distance=3..5, limit=1] 10