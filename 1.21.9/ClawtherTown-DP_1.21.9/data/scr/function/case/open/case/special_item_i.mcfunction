scoreboard players set @s case_opening 1
scoreboard players set @s case_opening_case 2
clear @s minecraft:carrot_on_a_stick[minecraft:item_name=case_special_item_i] 1
advancement grant @s only scr:case_rare_used

tellraw @s {"text":"","extra":[{"text":"[","color":"gold","bold":true},{"text":"开箱","color":"yellow","bold":true},{"text":"] ","color":"gold","bold":true},{"text":"正在","color":"yellow"},{"text":"开启","color":"yellow"},{"text":"[","color":"yellow"},{"translate":"item.scr.case_special_item_i","bold":false,"color":"yellow"},{"text":"]","color":"yellow"},{"text":"!","color":"yellow"}]}