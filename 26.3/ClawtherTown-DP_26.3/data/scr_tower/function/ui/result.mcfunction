data remove storage scr_tower:runtime result_reward
data modify storage scr_tower:runtime result_reward set from storage scr_tower:runtime p.run.pending[-1]
execute unless data storage scr_tower:runtime result_reward.handler run return run function scr_tower:ui/result_missing
execute if data storage scr_tower:runtime result_reward{handler:"clawther_gem"} run return run function scr_tower:ui/result_gem
execute if data storage scr_tower:runtime result_reward{handler:"item"} run function scr_tower:ui/result_item
