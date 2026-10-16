execute store result score #ok scr_tw run function scr_tower:context/open
execute unless score #ok scr_tw matches 1 run return 0
data get storage scr_tower:runtime p
