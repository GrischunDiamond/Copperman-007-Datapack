# Store camera_id in storage for macro usage
execute store result storage copperman:temp id int 1 run scoreboard players get @s camera_id
# Use macro to dynamically send reports based on camera_id
function copperman:gadgets/camera/send_report_macro with storage copperman:temp
