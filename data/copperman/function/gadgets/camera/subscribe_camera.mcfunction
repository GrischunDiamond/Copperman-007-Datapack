# Store the subscribe_camera score in storage for macro usage
execute store result storage copperman:temp id int 1 run scoreboard players get @s subscribe_camera
# Use macro to dynamically add camera tag
function copperman:gadgets/camera/subscribe_camera_macro with storage copperman:temp
