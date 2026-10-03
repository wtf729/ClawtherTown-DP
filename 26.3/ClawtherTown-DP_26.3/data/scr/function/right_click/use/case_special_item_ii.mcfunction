execute unless function scr:case/open/can_start run return 0
execute as @s[scores={cd_case=1..}] run function scr:right_click/tellraw/cd_case

execute as @s[scores={cd_case=0}] at @s run function scr:case/open/case/fast/open/special_item_ii