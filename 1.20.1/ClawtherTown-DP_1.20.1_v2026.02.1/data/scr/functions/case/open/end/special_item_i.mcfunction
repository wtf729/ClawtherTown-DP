execute if score @s case_opening_luck matches 1..100000 run execute as @a at @s run playsound scr:ui.cs_reveal_04 ambient @s ~ ~ ~ 0.8 1


execute as @s if score @s case_opening_luck matches 1..10000 run function scr:result/case/case_open/special_item_i/staff_clear_spring
execute as @s if score @s case_opening_luck matches 10001..30000 run function scr:result/case/case_open/clawther_case/case_special_item_i
execute as @s if score @s case_opening_luck matches 30001..40000 run function scr:result/case/case_open/special_item_i/staff_strong_wind
execute as @s if score @s case_opening_luck matches 40001..100000 run function scr:result/case/case_open/clawther_case/case_special_item_i