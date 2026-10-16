execute unless data storage scr_tower:runtime repair_alignment[0] run return 1
execute unless score #repair_take scr_tw < #repair_limit scr_tw run return 1
data modify storage scr_tower:runtime repair_expected_rewards append from storage scr_tower:runtime repair_alignment[0]
data remove storage scr_tower:runtime repair_alignment[0]
scoreboard players add #repair_take scr_tw 1
return run function scr_tower:mail/repair/take
