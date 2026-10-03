execute unless entity @s[tag=scr.case_starting] run return 0
execute unless score @s scr_open_amount matches 2.. run return run function scr:case/open/abort_start
function scr:case/open/initialize
scoreboard players set @s cd_case 200
scoreboard players operation @s case_opening_fast_remain = @s scr_open_amount
scoreboard players set @s case_opening_case 1
scoreboard players set @s case_opening_fast 1
tag @s remove scr.case_starting
scoreboard players reset @s scr_case_taken
