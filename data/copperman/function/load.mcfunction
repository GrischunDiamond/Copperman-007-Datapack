tellraw @a {"text":"Copperman Agents Datapack - Reloaded","bold":true,"color":"gold"}
function copperman:second
function copperman:10tick
function copperman:gadgets/camera/camera_detection
#say Hello World

tag GrischunDiamond add q
recipe give @a copperman:custom/suitcase
recipe give @a copperman:custom/surveillance_camera

scoreboard objectives add camera_id dummy
scoreboard objectives add opened_shulkerbox minecraft.custom:open_shulker_box
scoreboard objectives add pen_clicks dummy
scoreboard objectives add copperman_temp dummy

scoreboard players set @a pen_clicks 0

scoreboard objectives add copperman_help trigger
scoreboard objectives add add_agent trigger
scoreboard objectives add remove_agent trigger
scoreboard objectives add camera_on trigger
scoreboard objectives add camera_off trigger
scoreboard objectives add camera_admin_only trigger
scoreboard objectives add camera_delete_admin_only trigger
scoreboard objectives add list_cameras trigger
scoreboard objectives add subscribe_camera trigger
scoreboard objectives add desubscribe_camera trigger
scoreboard objectives add subscribe_all_cameras trigger
scoreboard objectives add desubscribe_all_cameras trigger


#Setup get new unused Camera_id
execute unless entity @e[type=marker,name=new_camera_id] run summon marker ~ ~ ~ {CustomName:"new_camera_id"}
execute if entity @e[type=marker,name=new_camera_id,scores={camera_id=..1}] run scoreboard players set @e[type=marker, name=new_camera_id] camera_id 0





