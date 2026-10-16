execute unless data storage scr_tower:runtime repair_rewards[0] run return 1
data modify storage scr_tower:runtime repair_reward set from storage scr_tower:runtime repair_rewards[0]
execute if data storage scr_tower:runtime repair_reward{handler:"clawther_gem"} store result score #repair_value scr_tw run data get storage scr_tower:runtime repair_reward.parameters.amount
execute if data storage scr_tower:runtime repair_reward{handler:"clawther_gem"} run scoreboard players operation #repair_total scr_tw += #repair_value scr_tw
data remove storage scr_tower:runtime repair_rewards[0]
return run function scr_tower:mail/repair/total
