#SUITCASE
execute as @a[scores={opened_shulkerbox=1..}] at @s if predicate copperman:is_not_sneaking run function copperman:gadgets/suitcase/check_shulker_box
scoreboard players reset @a opened_shulkerbox 
scoreboard players enable @a opened_shulkerbox

#PEN
execute as @a[scores={pen_clicks=6}] run scoreboard players set @s pen_clicks 0