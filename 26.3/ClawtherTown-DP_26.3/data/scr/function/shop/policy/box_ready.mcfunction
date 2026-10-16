# Pre-update paid orders have no origin. Keep them payable in Main; never adopt the current Sky inventory.
execute unless score @s scr_box_pf matches 1..5 run scoreboard players set @s scr_box_pf 1
execute unless function scr:shop/policy/ready run return run function scr:shop/policy/pause_box
execute unless score @s scr_box_pf = #profile scr_shop run return run function scr:shop/policy/pause_box
tag @s remove scr.shop_box_paused
return 1
