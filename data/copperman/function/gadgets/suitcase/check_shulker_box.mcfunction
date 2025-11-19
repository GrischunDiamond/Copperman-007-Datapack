# Check for suitcase in surrounding blocks and explode if found
# Using tag to track if suitcase was found for early exit
execute if block ~ ~ ~ black_shulker_box{CustomName:{"bold":true,"color":"dark_gray","text":"Suitcase"}} run tag @s add found_suitcase
execute if block ~ ~ ~ black_shulker_box{CustomName:{"bold":true,"color":"dark_gray","text":"Suitcase"}} at @s run function copperman:gadgets/suitcase/explode_suitcase

execute unless entity @s[tag=found_suitcase] if block ~ ~ ~-1 black_shulker_box{CustomName:{"bold":true,"color":"dark_gray","text":"Suitcase"}} run tag @s add found_suitcase
execute unless entity @s[tag=found_suitcase] if block ~ ~ ~-1 black_shulker_box{CustomName:{"bold":true,"color":"dark_gray","text":"Suitcase"}} at @s positioned ~ ~ ~-1 run function copperman:gadgets/suitcase/explode_suitcase

execute unless entity @s[tag=found_suitcase] if block ~ ~ ~1 black_shulker_box{CustomName:{"bold":true,"color":"dark_gray","text":"Suitcase"}} run tag @s add found_suitcase
execute unless entity @s[tag=found_suitcase] if block ~ ~ ~1 black_shulker_box{CustomName:{"bold":true,"color":"dark_gray","text":"Suitcase"}} at @s positioned ~ ~ ~1 run function copperman:gadgets/suitcase/explode_suitcase

execute unless entity @s[tag=found_suitcase] if block ~-1 ~ ~ black_shulker_box{CustomName:{"bold":true,"color":"dark_gray","text":"Suitcase"}} run tag @s add found_suitcase
execute unless entity @s[tag=found_suitcase] if block ~-1 ~ ~ black_shulker_box{CustomName:{"bold":true,"color":"dark_gray","text":"Suitcase"}} at @s positioned ~-1 ~ ~ run function copperman:gadgets/suitcase/explode_suitcase

execute unless entity @s[tag=found_suitcase] if block ~1 ~ ~ black_shulker_box{CustomName:{"bold":true,"color":"dark_gray","text":"Suitcase"}} run tag @s add found_suitcase
execute unless entity @s[tag=found_suitcase] if block ~1 ~ ~ black_shulker_box{CustomName:{"bold":true,"color":"dark_gray","text":"Suitcase"}} at @s positioned ~1 ~ ~ run function copperman:gadgets/suitcase/explode_suitcase

execute unless entity @s[tag=found_suitcase] if block ~-1 ~ ~-1 black_shulker_box{CustomName:{"bold":true,"color":"dark_gray","text":"Suitcase"}} run tag @s add found_suitcase
execute unless entity @s[tag=found_suitcase] if block ~-1 ~ ~-1 black_shulker_box{CustomName:{"bold":true,"color":"dark_gray","text":"Suitcase"}} at @s positioned ~-1 ~ ~-1 run function copperman:gadgets/suitcase/explode_suitcase

execute unless entity @s[tag=found_suitcase] if block ~-1 ~ ~1 black_shulker_box{CustomName:{"bold":true,"color":"dark_gray","text":"Suitcase"}} run tag @s add found_suitcase
execute unless entity @s[tag=found_suitcase] if block ~-1 ~ ~1 black_shulker_box{CustomName:{"bold":true,"color":"dark_gray","text":"Suitcase"}} at @s positioned ~-1 ~ ~1 run function copperman:gadgets/suitcase/explode_suitcase

execute unless entity @s[tag=found_suitcase] if block ~1 ~ ~-1 black_shulker_box{CustomName:{"bold":true,"color":"dark_gray","text":"Suitcase"}} run tag @s add found_suitcase
execute unless entity @s[tag=found_suitcase] if block ~1 ~ ~-1 black_shulker_box{CustomName:{"bold":true,"color":"dark_gray","text":"Suitcase"}} at @s positioned ~1 ~ ~-1 run function copperman:gadgets/suitcase/explode_suitcase

execute unless entity @s[tag=found_suitcase] if block ~1 ~ ~1 black_shulker_box{CustomName:{"bold":true,"color":"dark_gray","text":"Suitcase"}} run tag @s add found_suitcase
execute unless entity @s[tag=found_suitcase] if block ~1 ~ ~1 black_shulker_box{CustomName:{"bold":true,"color":"dark_gray","text":"Suitcase"}} at @s positioned ~1 ~ ~1 run function copperman:gadgets/suitcase/explode_suitcase

# Remove the tag
tag @s remove found_suitcase
