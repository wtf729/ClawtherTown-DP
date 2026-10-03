execute unless function scr:case/open/try_lock run return 0
execute store result score @s scr_case_taken run clear @s minecraft:carrot_on_a_stick[minecraft:item_name=case_special_item_i] 1
execute unless score @s scr_case_taken matches 1 run return run function scr:case/open/abort_start
function scr:case/open/initialize
scoreboard players set @s cd_case 240
scoreboard players set @s case_opening 1
scoreboard players set @s case_opening_case 2
advancement grant @s only scr:case_rare_used

tellraw @s {"text":"","extra":[{"text":"正在","color":"yellow"},{"text":"开启","color":"yellow"},{"text":"[","color":"yellow"},{"translate":"item.scr.case_special_item_i","bold":false,"color":"yellow"},{"text":"]","color":"yellow"},{"text":"!","color":"yellow"}]}
tag @s remove scr.case_starting
scoreboard players reset @s scr_case_taken
