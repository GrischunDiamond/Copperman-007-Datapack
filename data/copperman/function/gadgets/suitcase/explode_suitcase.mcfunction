
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 5 12
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 0.6
kill @a[distance=..2]
damage @a[distance=3..5, limit=1] 15

# Remove the suitcase at the current position (we're already positioned at the suitcase location)
setblock ~ ~ ~ air



