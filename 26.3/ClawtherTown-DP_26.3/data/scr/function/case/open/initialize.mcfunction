# Only a successfully paid/consumed, reserved request may initialize state.
execute unless entity @s[tag=scr.case_starting] run return 0
scoreboard players set @s case_opening 0
scoreboard players set @s case_opening_time 0
scoreboard players set @s case_opening_time_click 0
scoreboard players set @s case_opening_time_draw 0
scoreboard players set @s case_opening_case 0
scoreboard players set @s case_opening_fast 0
scoreboard players set @s case_opening_fast_remain 0
scoreboard players set @s case_opening_fast_wait 0
scoreboard players set @s case_opening_fast_total 0

scoreboard players reset @s scr_draw_pf
tag @s remove scr.shop_draw_paused
tag @s remove scr.case_item
tag @s add scr.case_item
