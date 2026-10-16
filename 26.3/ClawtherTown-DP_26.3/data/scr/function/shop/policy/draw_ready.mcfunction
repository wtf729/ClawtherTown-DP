# Legacy case 1 cannot distinguish shop vs physical origin: conservatively resume it in Main.
# All new physical requests are explicitly tagged by initialize and remain unrestricted.
execute if score @s case_opening_case matches 1 unless entity @s[tag=scr.case_item] unless score @s scr_draw_pf matches 1..5 run scoreboard players set @s scr_draw_pf 1
execute if score @s case_opening_case matches 4 unless score @s scr_draw_pf matches 1..5 run scoreboard players set @s scr_draw_pf 1
execute unless score @s scr_draw_pf matches 1..5 run return 1
execute unless function scr:shop/policy/ready run return run function scr:shop/policy/pause_draw
execute unless score @s scr_draw_pf = #profile scr_shop run return run function scr:shop/policy/pause_draw
tag @s remove scr.shop_draw_paused
return 1
