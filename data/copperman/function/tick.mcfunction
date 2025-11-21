#SUITCASE
execute as @a[scores={opened_shulkerbox=1..}] at @s if predicate copperman:is_not_sneaking run function copperman:gadgets/suitcase/check_shulker_box
scoreboard players reset @a opened_shulkerbox 
scoreboard players enable @a opened_shulkerbox

#PEN
execute as @a[scores={pen_clicks=6}] run scoreboard players set @s pen_clicks 0

#Detect when player picks up pen with value (only if player has inventory space)
execute as @e[type=item, predicate=copperman:is_pen, scores={pen_clicks=1..}] at @s if entity @a[distance=..1.5, sort=nearest, limit=1, nbt=!{Inventory:[{Slot:0b},{Slot:1b},{Slot:2b},{Slot:3b},{Slot:4b},{Slot:5b},{Slot:6b},{Slot:7b},{Slot:8b},{Slot:9b},{Slot:10b},{Slot:11b},{Slot:12b},{Slot:13b},{Slot:14b},{Slot:15b},{Slot:16b},{Slot:17b},{Slot:18b},{Slot:19b},{Slot:20b},{Slot:21b},{Slot:22b},{Slot:23b},{Slot:24b},{Slot:25b},{Slot:26b},{Slot:27b},{Slot:28b},{Slot:29b},{Slot:30b},{Slot:31b},{Slot:32b},{Slot:33b},{Slot:34b},{Slot:35b}]}] run function copperman:gadgets/pen/transfer_to_player