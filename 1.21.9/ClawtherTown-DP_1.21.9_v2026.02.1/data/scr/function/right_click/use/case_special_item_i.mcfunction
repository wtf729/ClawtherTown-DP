execute as @s[scores={cd_case=1..}] run function scr:right_click/tellraw/cd_case

execute as @s[scores={cd_case=0}] at @s run function scr:case/open/case/special_item_i
