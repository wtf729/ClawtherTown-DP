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

execute as @s if score @s case_opening_luck matches 1..260 run function scr:result/case/case_open/dream_wing/case_special_item_ii
execute as @s if score @s case_opening_luck matches 261..585 run function scr:result/case/case_open/dream_wing/chest_clawther_coin
execute as @s if score @s case_opening_luck matches 586..910 run function scr:result/case/case_open/dream_wing/rare_ore_3
execute as @s if score @s case_opening_luck matches 911..2510 run function scr:result/case/case_open/dream_wing/mystic_coin_4
execute as @s if score @s case_opening_luck matches 2511..4110 run function scr:result/case/case_open/dream_wing/mystic_coin_6
execute as @s if score @s case_opening_luck matches 4111..12100 run function scr:result/case/case_open/dream_wing/clawther_coin_30
execute as @s if score @s case_opening_luck matches 12101..20090 run function scr:result/case/case_open/dream_wing/soul_30
execute as @s if score @s case_opening_luck matches 20091..46727 run function scr:result/case/case_open/dream_wing/clawther_2
execute as @s if score @s case_opening_luck matches 46728..73364 run function scr:result/case/case_open/dream_wing/clawther_3
execute as @s if score @s case_opening_luck matches 73365..100000 run function scr:result/case/case_open/dream_wing/clawther_4