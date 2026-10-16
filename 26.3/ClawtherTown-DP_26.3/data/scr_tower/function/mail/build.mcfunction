execute unless data storage scr_tower:runtime remaining[0] run return run function scr_tower:mail/flush
data modify storage scr_tower:runtime chunk append from storage scr_tower:runtime remaining[0]
data remove storage scr_tower:runtime remaining[0]
scoreboard players add #size scr_tw 1
execute if score #size scr_tw matches 30 run function scr_tower:mail/flush
return run function scr_tower:mail/build
