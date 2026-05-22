scoreboard players add #item_cleaning timecounter 1
execute store result score #item_count_item item_cleaning if entity @e[type=minecraft:item]
execute store result score #item_count_exp item_cleaning if entity @e[type=minecraft:experience_orb]
function scr:item_cleaning/calculation

#stages
execute if score #item_cleaning_stage item_cleaning matches 0 run function scr:item_cleaning/stage0
execute if score #item_cleaning_stage item_cleaning matches 1 run function scr:item_cleaning/stage1
execute if score #item_cleaning_stage item_cleaning matches 2 run function scr:item_cleaning/stage2
execute if score #item_cleaning_stage item_cleaning matches 3 run function scr:item_cleaning/stage3
execute if score #item_cleaning_stage item_cleaning matches 4 run function scr:item_cleaning/stage4
execute if score #item_cleaning_stage item_cleaning matches 5 run function scr:item_cleaning/stage5
execute if score #item_cleaning_stage item_cleaning matches 6 run function scr:item_cleaning/stage6

execute if score #instant_clear item_cleaning matches 0 run function scr:item_cleaning/instant_clear_check
execute if score #instant_clear item_cleaning matches 1 run function scr:item_cleaning/instant_clear_execute
execute if score #instant_clear item_cleaning matches 2 run function scr:item_cleaning/instant_clear_countdown
execute if score #instant_clear item_cleaning matches 3 run function scr:item_cleaning/instant_clear