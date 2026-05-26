scoreboard players set @s case_opening 1
scoreboard players set @s case_opening_case 6
clear @s minecraft:carrot_on_a_stick[minecraft:item_name=case_rare_ore] 1

tellraw @s {"text":"","extra":[{"text":"正在","color":"yellow"},{"text":"开启","color":"yellow"},{"text":" [奇珍矿石] ","color":"light_purple"},{"text":"!","color":"yellow"}]}