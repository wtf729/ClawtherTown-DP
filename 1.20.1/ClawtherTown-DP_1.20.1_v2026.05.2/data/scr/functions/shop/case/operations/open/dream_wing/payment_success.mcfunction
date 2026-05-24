scoreboard players operation @s dream_wing -= @s shop_case_amount

execute as @s[scores={shop_case_amount=1}] at @s run function scr:case/open/case/dream_wing
execute as @s[scores={shop_case_amount=2..}] at @s run function scr:case/open/case/fast/open/dream_wing