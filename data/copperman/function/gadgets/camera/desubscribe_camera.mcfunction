# Store the desubscribe_camera score in storage for macro usage
execute store result storage copperman:temp id int 1 run scoreboard players get @s desubscribe_camera
# Use macro to dynamically remove camera tag
function copperman:gadgets/camera/desubscribe_camera_macro with storage copperman:temp
