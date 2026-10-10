execute unless function scr:case/open/try_lock run return 0
execute store result score @s scr_case_taken run clear @s minecraft:carrot_on_a_stick[minecraft:item_name=case_special_item_ii] 1
execute unless score @s scr_case_taken matches 1 run return run function scr:case/open/abort_start
function scr:case/open/initialize
scoreboard players set @s cd_case 200
scoreboard players set @s case_opening_fast_remain 10
scoreboard players set @s case_opening_case 5
scoreboard players set @s case_opening_fast 1
advancement grant @s only scr:case_rare_used

tellraw @s [{"text":"正在","color":"yellow"},{"text":"开启","color":"yellow"},{"text":" [★ 奇珍矿脉 ★] ","color":"yellow"},{"text":"!","color":"yellow"}]
tag @s remove scr.case_starting
scoreboard players reset @s scr_case_taken
