# Start the loop from camera ID 0
data modify storage copperman:temp id set value 0
function copperman:gadgets/camera/desubscribe_all_cameras_loop with storage copperman:temp
