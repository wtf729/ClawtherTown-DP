execute store result storage scr_tower:runtime part.index int 1 run scoreboard players get #part scr_tw
data remove storage scr_tower:runtime envelope
function scr_tower:mail/read with storage scr_tower:runtime part
execute unless data storage scr_tower:runtime envelope run return 1
execute unless data storage scr_tower:runtime envelope{state:"sent"} store result score #sent scr_tw run function scr_tower:mail/send
execute unless data storage scr_tower:runtime envelope{state:"sent"} run return 0
scoreboard players add #part scr_tw 1
return run function scr_tower:mail/loop
