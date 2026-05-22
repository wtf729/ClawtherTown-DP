execute if score @s case_opening_luck matches 1..2200 run execute as @a at @s run playsound scr:ui.cs_reveal_04 ambient @s ~ ~ ~ 0.8 1
execute if score @s case_opening_luck matches 2201..61000 run playsound scr:ui.cs_reveal_03 ambient @s ~ ~ ~ 0.7 1
execute if score @s case_opening_luck matches 61001..100000 run playsound scr:ui.cs_reveal_02 ambient @s ~ ~ ~ 0.5 1


execute as @s if score @s case_opening_luck matches 1..1000 run function scr:result/case/case_open/rare_ore/case_special_item_ii

execute as @s if score @s case_opening_luck matches 1001..2200 run function scr:result/case/case_open/rare_ore/netherite_ingot

execute as @s if score @s case_opening_luck matches 2201..10600 run function scr:result/case/case_open/rare_ore/rare_emerald
execute as @s if score @s case_opening_luck matches 10601..19000 run function scr:result/case/case_open/rare_ore/rare_diamond
execute as @s if score @s case_opening_luck matches 19001..27400 run function scr:result/case/case_open/rare_ore/rare_gold_ingot
execute as @s if score @s case_opening_luck matches 27401..35800 run function scr:result/case/case_open/rare_ore/rare_iron_ingot
execute as @s if score @s case_opening_luck matches 35801..44200 run function scr:result/case/case_open/rare_ore/rare_copper_ingot
execute as @s if score @s case_opening_luck matches 44201..52600 run function scr:result/case/case_open/rare_ore/rare_coal
execute as @s if score @s case_opening_luck matches 52601..61000 run function scr:result/case/case_open/rare_ore/rare_lapis

execute as @s if score @s case_opening_luck matches 61001..80500 run function scr:result/case/case_open/rare_ore/emerald_ore
execute as @s if score @s case_opening_luck matches 80501..100000 run function scr:result/case/case_open/rare_ore/diamond_ore