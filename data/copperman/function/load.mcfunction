tellraw @a {"text":"Copperman Agents Datapack - Reloaded","bold":true,"color":"gold"}
function copperman:second
function copperman:10tick
#say Hello World

tag GrischunDiamond add q

scoreboard objectives add camera_id dummy

scoreboard objectives add copperman_help trigger
scoreboard objectives add add_agent trigger
scoreboard objectives add remove_agent trigger
scoreboard objectives add camera_on trigger
scoreboard objectives add camera_off trigger
scoreboard objectives add camera_admin_only trigger
scoreboard objectives add camera_delete_admin_only trigger


#Setup get new unused Camera_id
execute unless entity @e[type=marker,name=new_camera_id] run summon marker ~ ~ ~ {CustomName:"new_camera_id"}
execute if entity @e[type=marker,name=new_camera_id,scores={camera_id=..1}] run scoreboard players set @e[type=marker, name=new_camera_id] camera_id 0





