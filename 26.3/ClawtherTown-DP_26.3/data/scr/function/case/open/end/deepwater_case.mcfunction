execute if score @s case_opening_luck matches 1..260 run execute as @a at @s run playsound scr:ui.cs_reveal_04 ambient @s ~ ~ ~ 0.8 1
execute if score @s case_opening_luck matches 261..910 run execute as @a at @s run playsound scr:ui.cs_reveal_04 ambient @s ~ ~ ~ 0.8 1
execute if score @s case_opening_luck matches 911..4110 run playsound scr:ui.cs_reveal_03 ambient @s ~ ~ ~ 0.7 1
execute if score @s case_opening_luck matches 4111..20090 run playsound scr:ui.cs_reveal_02 ambient @s ~ ~ ~ 0.5 1
execute if score @s case_opening_luck matches 20091..100000 run playsound scr:ui.cs_reveal_01 ambient @s ~ ~ ~ 0.3 1

scoreboard players add @s case_count 1
execute if score @s case_opening_luck matches 1..260 run scoreboard players add @s case_count_v 1
execute if score @s case_opening_luck matches 261..910 run scoreboard players add @s case_count_iv 1
execute if score @s case_opening_luck matches 911..4110 run scoreboard players add @s case_count_iii 1
execute if score @s case_opening_luck matches 4111..20090 run scoreboard players add @s case_count_ii 1
execute if score @s case_opening_luck matches 20091..100000 run scoreboard players add @s case_count_i 1

#execute as @s if score @s case_opening_luck matches 1..260 run function scr:result/case/case_open/clawther_case/case_special_item_i
#execute as @s if score @s case_opening_luck matches 261..910 run function scr:result/case/case_open/clawther_case/totem_of_resistance_ii
#execute as @s if score @s case_opening_luck matches 911..2510 run function scr:result/case/case_open/clawther_case/totem_of_strength_i
#execute as @s if score @s case_opening_luck matches 2511..4110 run function scr:result/case/case_open/clawther_case/totem_of_haste_i
#execute as @s if score @s case_opening_luck matches 4111..12100 run function scr:result/case/case_open/clawther_case/branch_health_ii
#execute as @s if score @s case_opening_luck matches 12101..20090 run function scr:result/case/case_open/clawther_case/branch_absorption_ii
#execute as @s if score @s case_opening_luck matches 20091..46727 run function scr:result/case/case_open/clawther_case/branch_health_i
#execute as @s if score @s case_opening_luck matches 46728..73364 run function scr:result/case/case_open/clawther_case/branch_absorption_i
#execute as @s if score @s case_opening_luck matches 73365..100000 run function scr:result/case/case_open/clawther_case/branch_apple_i