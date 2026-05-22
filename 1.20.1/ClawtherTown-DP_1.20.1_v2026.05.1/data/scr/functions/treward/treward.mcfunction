scoreboard players add #treward timecounter 1
scoreboard players add #treward treward_stage 0
execute if score #treward timecounter matches 12000.. run function scr:treward/stage_complete

#stages
execute if score #treward treward_stage matches ..-1 run function scr:treward/stage_reset