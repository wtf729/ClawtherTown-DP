execute unless entity @s[tag=scr.case_starting] run return 0
function scr:case/open/initialize
scoreboard players set @s cd_case 240
scoreboard players set @s case_opening 1
scoreboard players set @s case_opening_case 4

tellraw @s {"text":"","extra":[{"text":"正在","color":"yellow"},{"text":"开启","color":"yellow"},{"text":" [幻梦翎片] ","color":"green"},{"text":"!","color":"yellow"}]}
tag @s remove scr.case_starting
scoreboard players reset @s scr_case_taken
