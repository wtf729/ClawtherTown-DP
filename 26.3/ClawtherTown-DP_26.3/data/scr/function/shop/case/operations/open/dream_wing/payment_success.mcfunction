execute unless function scr:shop/policy/request run return 0
execute unless function scr:case/open/try_lock run return 0
execute unless score @s scr_open_amount matches 1.. run return run function scr:case/open/abort_start
execute unless score @s dream_wing >= @s scr_open_amount run return run function scr:case/open/abort_start
execute store success score @s scr_case_taken run scoreboard players operation @s dream_wing -= @s scr_open_amount
execute unless score @s scr_case_taken matches 1 run return run function scr:case/open/abort_start
execute as @s[scores={scr_open_amount=1}] at @s run function scr:case/open/case/dream_wing
execute as @s[scores={scr_open_amount=2..}] at @s run function scr:case/open/case/fast/open/dream_wing
tag @s remove scr.case_starting
scoreboard players reset @s scr_case_taken

# Bind only successfully started shop draws, after shared initialization.
execute if score @s case_opening matches 1 run scoreboard players operation @s scr_draw_pf = #profile scr_shop
execute if score @s case_opening_fast matches 1 run scoreboard players operation @s scr_draw_pf = #profile scr_shop
execute if score @s scr_draw_pf matches 1..5 run tag @s remove scr.case_item
