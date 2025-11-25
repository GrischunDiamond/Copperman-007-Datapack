#SUITCASE
execute as @a[scores={opened_shulkerbox=1..}] at @s if predicate copperman:is_not_sneaking run function copperman:gadgets/suitcase/check_shulker_box
scoreboard players reset @a opened_shulkerbox 
scoreboard players enable @a opened_shulkerbox

#PEN
#Reset pen_clicks at 6
execute as @a[scores={pen_clicks=6}] run scoreboard players set @s pen_clicks 0

#Arm pen when 3 clicks - set 4 second timer (only if not already armed)
execute as @a[scores={pen_clicks=3}, tag=!pen_explode] run scoreboard players set @s pen_timer 4
execute as @a[scores={pen_clicks=3}, tag=!pen_explode] run tag @s add pen_explode

execute as @e[type=item, predicate=copperman:is_pen, scores={pen_clicks=3}, tag=!pen_explode] run scoreboard players set @s pen_timer 4
execute as @e[type=item, predicate=copperman:is_pen, scores={pen_clicks=3}, tag=!pen_explode] run tag @s add pen_explode

#Explode when timer reaches 0
execute as @a[scores={pen_timer=0}, tag=pen_explode] at @s run function copperman:gadgets/pen/pen_explode
execute as @e[type=item, predicate=copperman:is_pen, scores={pen_timer=0}, tag=pen_explode] at @s run function copperman:gadgets/pen/pen_explode

#Disarm - remove tag when clicks reset to 0
execute as @a[tag=pen_explode, scores={pen_clicks=0}] run tag @s remove pen_explode
execute as @a[tag=pen_explode, scores={pen_clicks=0}] run scoreboard players reset @s pen_timer

#Transfer clicks from player to dropped pen
execute at @a[scores={pen_clicks=1..}] as @e[type=item, distance=..5, sort=nearest, limit=1, predicate=copperman:is_pen] at @s run function copperman:gadgets/pen/transfer_to_item

#Transfer clicks from pen back to player when picked up (only if player has inventory space)
execute as @e[type=item, predicate=copperman:is_pen, scores={pen_clicks=1..}] at @s if entity @a[distance=..1.5, sort=nearest, limit=1, nbt=!{Inventory:[{Slot:0b},{Slot:1b},{Slot:2b},{Slot:3b},{Slot:4b},{Slot:5b},{Slot:6b},{Slot:7b},{Slot:8b},{Slot:9b},{Slot:10b},{Slot:11b},{Slot:12b},{Slot:13b},{Slot:14b},{Slot:15b},{Slot:16b},{Slot:17b},{Slot:18b},{Slot:19b},{Slot:20b},{Slot:21b},{Slot:22b},{Slot:23b},{Slot:24b},{Slot:25b},{Slot:26b},{Slot:27b},{Slot:28b},{Slot:29b},{Slot:30b},{Slot:31b},{Slot:32b},{Slot:33b},{Slot:34b},{Slot:35b}]}] run function copperman:gadgets/pen/transfer_to_player
