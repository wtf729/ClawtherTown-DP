execute unless dimension scr:sky run return 0
execute if data storage scr_sky:jobs active{kind:"travel",spawn_mode:"emergency"} run effect give @s minecraft:resistance 30 255 true
$execute store success score #arrived scr_sk run teleport @s $(x) $(y) $(z) $(yaw) $(pitch)
