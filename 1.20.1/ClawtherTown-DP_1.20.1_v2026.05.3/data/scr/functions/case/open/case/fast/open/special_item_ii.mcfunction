scoreboard players set @s case_opening_fast_remain 10
scoreboard players set @s case_opening_case 5
scoreboard players set @s case_opening_fast 1
clear @s minecraft:carrot_on_a_stick{id:"scr:case_special_item_ii"} 1
advancement grant @s only scr:case_rare_used

tellraw @s {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"开箱","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"正在","color":"yellow"},{"text":"开启","color":"yellow"},{"text":" [★ 奇珍矿脉 ★] ","color":"yellow"},{"text":"!","color":"yellow"}]}