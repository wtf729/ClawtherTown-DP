execute unless score #repair_skip scr_tw matches 1.. run return 1
data remove storage scr_tower:runtime repair_alignment[0]
scoreboard players remove #repair_skip scr_tw 1
return run function scr_tower:mail/repair/skip
