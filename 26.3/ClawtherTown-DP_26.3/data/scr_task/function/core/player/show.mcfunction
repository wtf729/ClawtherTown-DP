$tellraw @s [{text:"Task storage: ",color:"gold"},{nbt:'players."$(key)"',storage:"scr_task:players",color:"white"}]
$return run data get storage scr_task:players players."$(key)"
