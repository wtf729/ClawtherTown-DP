execute unless entity @s[tag=scr.case_starting] run return 0
function scr:case/open/initialize
scoreboard players set @s cd_case 240
scoreboard players set @s case_opening 1
scoreboard players set @s case_opening_case 1


tellraw @s {"text":"","extra":[{"text":"正在使用","color":"yellow"},{"text":" [鹰翎之箱钥匙] ","color":"aqua"},{"text":"开启","color":"yellow"},{"text":" [鹰翎之箱] ","color":"gold"},{"text":"!","color":"yellow"}]}
tag @s remove scr.case_starting
scoreboard players reset @s scr_case_taken
