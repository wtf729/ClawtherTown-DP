execute unless entity @s[type=minecraft:player] run return 0
data remove storage scr_tower:runtime ctx
data remove storage scr_tower:runtime p
execute store result score #uuid scr_tw run function scr_uuid:resolve
execute unless score #uuid scr_tw matches 1 run return 0
data modify storage scr_tower:runtime ctx set from storage scr_uuid:runtime result
return run function scr_tower:context/read with storage scr_tower:runtime ctx
