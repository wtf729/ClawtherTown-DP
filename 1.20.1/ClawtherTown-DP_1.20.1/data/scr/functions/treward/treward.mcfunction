scoreboard players add #treward_timecounter treward 1
scoreboard players add #treward_stage treward 0
execute if score #treward_timecounter treward matches 12000.. run function scr:treward/stage_complete

#stages
execute if score #treward_stage treward matches ..-1 run function scr:treward/stage_reset