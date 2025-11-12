
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 5 12
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 0.6
kill @a[distance=..2]
damage @a[distance=3..5, limit=1] 15

execute if block ~-1 ~ ~ black_shulker_box{CustomName:{"bold":true,"color":"dark_gray","text":"Suitcase"}} run setblock ~-1 ~ ~ air
execute if block ~-1 ~ ~-1 black_shulker_box{CustomName:{"bold":true,"color":"dark_gray","text":"Suitcase"}} run setblock ~-1 ~ ~-1 air
execute if block ~-1 ~ ~1 black_shulker_box{CustomName:{"bold":true,"color":"dark_gray","text":"Suitcase"}} run setblock ~-1 ~ ~1 air
execute if block ~ ~ ~-1 black_shulker_box{CustomName:{"bold":true,"color":"dark_gray","text":"Suitcase"}} run setblock ~ ~ ~-1 air
execute if block ~ ~ ~ black_shulker_box{CustomName:{"bold":true,"color":"dark_gray","text":"Suitcase"}} run setblock ~ ~ ~ air
execute if block ~ ~ ~1 black_shulker_box{CustomName:{"bold":true,"color":"dark_gray","text":"Suitcase"}} run setblock ~ ~ ~1 air
execute if block ~1 ~ ~-1 black_shulker_box{CustomName:{"bold":true,"color":"dark_gray","text":"Suitcase"}} run setblock ~1 ~ ~-1 air
execute if block ~1 ~ ~ black_shulker_box{CustomName:{"bold":true,"color":"dark_gray","text":"Suitcase"}} run setblock ~1 ~ ~ air
execute if block ~1 ~ ~1 black_shulker_box{CustomName:{"bold":true,"color":"dark_gray","text":"Suitcase"}} run setblock ~1 ~ ~1 air



